package com.bccestari.rick_sanchez_store;

import com.bccestari.rick_sanchez_store.controllers.InventionsViewController;
import com.bccestari.rick_sanchez_store.models.Invention;
import com.bccestari.rick_sanchez_store.services.InventionsRepository;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.Sort;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.util.Date;

import java.util.List;
import java.util.Optional;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.multipart;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(InventionsViewController.class)
public class InventionsViewControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private InventionsRepository inventionsRepository;

    @Test
    public void testShowInventionList() throws Exception {
        // Mock the repository

        Invention invention1 = new Invention();
        invention1.setId(1);
        invention1.setName("Portal Gun");
        invention1.setCategory("Weapons");
        invention1.setPrice(100.0);
        invention1.setDescription("Shoots portals");
        invention1.setCreatedAt(new Date());
        invention1.setImageFileName("portalgun.jpg");

        List<Invention> inventions = List.of(invention1);
        Mockito.when(inventionsRepository.findAll(Mockito.any(Sort.class))).thenReturn(inventions);

        //Perform a GET request
        mockMvc.perform(MockMvcRequestBuilders.get("/inventions"))
                .andExpect(status().isOk())
                .andExpect(view().name("inventions/index"))
                .andExpect(model().attributeExists("inventions"))
                .andExpect(model().attribute("inventions", inventions));


    }
    @Test
    public void testCreateInventionValid() throws Exception {
        // Arrange: Create valid input
        MockMultipartFile imageFile = new MockMultipartFile(
                "imageFile", "image.jpg", "image/jpeg", "test image".getBytes()
        );

        // Act & Assert
        mockMvc.perform(multipart("/inventions/create")
                        .file(imageFile)
                        .param("name", "Portal Gun")
                        .param("category", "Weapons")
                        .param("price", "100.0")
                        .param("description", "Shoots portals"))
                .andExpect(status().is3xxRedirection()) // Redirect on success
                .andExpect(redirectedUrl("/inventions"));
    }

    @Test
    public void testCreateInventionInvalid() throws Exception {
        // Arrange: Missing image file
        mockMvc.perform(multipart("/inventions/create")
                        .param("name", "Portal Gun")
                        .param("category", "Weapons")
                        .param("price", "100.0")
                        .param("description", "Shoots portals"))
                .andExpect(status().isOk()) // Returns the form
                .andExpect(view().name("inventions/CreateInvention")) // Form view name
                .andExpect(model().attributeHasFieldErrors("inventionDto", "imageFile")); // Validation error for imageFile
    }

    @Test
    public void testDeleteInvention() throws Exception {
        // Arrange: Mock the repository
        Invention invention1 = new Invention();
        invention1.setId(1);
        invention1.setName("Portal Gun");
        invention1.setCategory("Weapons");
        invention1.setPrice(100.0);
        invention1.setDescription("Shoots portals");
        invention1.setCreatedAt(new Date());
        invention1.setImageFileName("portalgun.jpg");

        Mockito.when(inventionsRepository.findById(1)).thenReturn(Optional.of(invention1));

        // Act & Assert
        mockMvc.perform(MockMvcRequestBuilders.get("/inventions/delete")
                        .param("id", "1"))
                .andExpect(status().is3xxRedirection()) // Redirect on success
                .andExpect(redirectedUrl("/inventions")); // Redirect to the list page

        // Verify that the repository's delete method was called
        Mockito.verify(inventionsRepository).delete(invention1);
    }



    

}



