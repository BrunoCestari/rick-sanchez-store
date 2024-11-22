package com.bccestari.rick_sanchez_store.controllers;

import com.bccestari.rick_sanchez_store.models.Invention;
import com.bccestari.rick_sanchez_store.services.InventionsRepository;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;


import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.stream.Stream;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
public class InventionsViewControllerIntegrationTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private InventionsRepository repository;

    @BeforeEach
    void setup() {
        repository.deleteAll(); // Clear the database before each test
        Invention invention = new Invention();
        invention.setName("Portal Gun");
        invention.setCategory("Technology");
        invention.setPrice(99.99);
        invention.setDescription("A gun that opens portals to other dimensions.");
        invention.setCreatedAt(new Date());
        invention.setImageFileName("portal_gun.png");
        repository.save(invention);
    }


    @Test
    void shouldReturnInventionList() throws Exception {
        mockMvc.perform(get("/inventions"))
                .andExpect(status().isOk())
                .andExpect(view().name("inventions/index"))
                .andExpect(model().attributeExists("inventions"));
    }

    @Test
    void shouldCreateInvention() throws Exception {
        MockMultipartFile imageFile = new MockMultipartFile("imageFile", "testImage.jpg", "image/jpeg", "test image content".getBytes());
        mockMvc.perform(MockMvcRequestBuilders.multipart("/inventions/create")
                        .file(imageFile)
                        .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                        .param("name", "Meeseeks Box")
                        .param("category", "Gadget")
                        .param("price", "49.99")
                        .param("description", "Summons Meeseeks to complete tasks."))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/inventions"));
    }

    @Test
    void shouldEditInvention() throws Exception {
        Invention existing = repository.findAll().get(0);

        mockMvc.perform(post("/inventions/edit")
                        .param("id", String.valueOf(existing.getId()))
                        .param("name", "Updated Portal Gun")
                        .param("category", "Tech")
                        .param("price", "199.99")
                        .param("description", "Updated description."))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/inventions"));
    }

    @Test
    void shouldDeleteInvention() throws Exception {
        Invention existing = repository.findAll().get(0);

        mockMvc.perform(get("/inventions/delete")
                        .param("id", String.valueOf(existing.getId())))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/inventions"));
    }
}
