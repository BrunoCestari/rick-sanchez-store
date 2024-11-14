// Controls the inventions views for the user interface.

package com.bccestari.rick_sanchez_store.controllers;

import com.bccestari.rick_sanchez_store.models.Invention;
import com.bccestari.rick_sanchez_store.models.InventionDto;
import com.bccestari.rick_sanchez_store.services.InventionsRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Date;
import java.util.List;
@Controller
@RequestMapping("/inventions")
public class InventionsViewController {
        @Autowired
        private InventionsRepository repo;

        @GetMapping({"", "/"})
        public String showInventionList (Model model){
            List<Invention> inventions = repo.findAll(Sort.by(Sort.Direction.DESC, "id"));
            model.addAttribute("inventions", inventions);
            return "inventions/index";
        }

        @GetMapping("/create")
        public String showCreatePage(Model model){
            InventionDto inventionDto = new InventionDto();
            model.addAttribute("inventionDto", inventionDto);
            return "inventions/CreateInvention";
        }
        
        
    @PostMapping("/create")
    public String createinvention(
            @Valid @ModelAttribute InventionDto inventionDto,
            BindingResult result
    ) {
        if (inventionDto.getImageFile().isEmpty()) {
            result.addError(new FieldError("inventionDto", "imageFile", "The image file is required"));
        }

        if(result.hasErrors()){
            return "inventions/CreateInvention";
        }

        // Save image file
        MultipartFile image = inventionDto.getImageFile();
        Date createdAt = new Date();
        String storageFileName = createdAt.getTime() + "_" + image.getOriginalFilename();

        try {
            String uploadDir = "public/images/";
            Path uploadPath = Paths.get(uploadDir);

            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath);
            }

            try (InputStream inputStream = image.getInputStream()) {
                Files.copy(inputStream, Paths.get(uploadDir + storageFileName),
                        StandardCopyOption.REPLACE_EXISTING);
            }
        }    catch (Exception ex) {
            System.out.println("Exception: " + ex.getMessage());
        }


        Invention invention = new Invention();
        invention.setName(inventionDto.getName());
        invention.setCategory(inventionDto.getCategory());
        invention.setPrice(inventionDto.getPrice());
        invention.setDescription(inventionDto.getDescription());
        invention.setCreatedAt(createdAt);
        invention.setImageFileName(storageFileName);

        repo.save(invention);

        return "redirect:/inventions";

    }
    
    
    @GetMapping("/edit")
    public String showEditPage(
            Model model,
            @RequestParam int id
    ) {
        try {
            Invention invention = repo.findById(id).get();
            model.addAttribute("invention", invention);

            InventionDto inventionDto = new InventionDto();
            inventionDto.setName(invention.getName());
            inventionDto.setCategory(invention.getCategory());
            inventionDto.setPrice(invention.getPrice());
            inventionDto.setDescription(invention.getDescription());

            model.addAttribute("inventionDto", inventionDto);
        } catch (Exception ex) {
            System.out.println("Exception: " + ex.getMessage());
            return "redirect:/inventions";
        }

        return "inventions/EditInvention";
    }

    @PostMapping("/edit")
    public String updateInvention(
            Model model,
            @RequestParam int id,
            @Valid @ModelAttribute InventionDto inventionDto,
            BindingResult result
    ) {

        try {
            Invention invention = repo.findById(id).get();
            model.addAttribute("invention", invention);

            if (result.hasErrors()) {
                return "inventions/EditInvention";
            }

            if (!inventionDto.getImageFile().isEmpty()) {
                // Delete old image
                String uploadDir = "public/images/";
                Path oldImagePath = Paths.get(uploadDir + invention.getImageFileName());

                try {
                    Files.delete(oldImagePath);
                } catch (Exception ex) {
                    System.out.println("Exception: " + ex.getMessage());
                }

                // Save new image file
                MultipartFile imageFile = inventionDto.getImageFile();
                Date createdAt = new Date();
                String storageFileName = createdAt.getTime() + " " + imageFile.getOriginalFilename();

                try (InputStream inputStream = imageFile.getInputStream()) {
                    Files.copy(inputStream, Paths.get(uploadDir + storageFileName), StandardCopyOption.REPLACE_EXISTING);
                } catch (Exception ex) {
                    System.out.println("Exception: " + ex.getMessage());
                }

                invention.setImageFileName(storageFileName);
            }


            invention.setName(inventionDto.getName());
            invention.setCategory(inventionDto.getCategory());
            invention.setPrice(inventionDto.getPrice());
            invention.setDescription(inventionDto.getDescription());

            repo.save(invention);


        } catch (Exception ex) {
            System.out.println("Exception: " + ex.getMessage());
        }

        return "redirect:/inventions";
    }
    
    @GetMapping("/delete")
    public String deleteInvention(
            @RequestParam int id
    ) {

        try {
            Invention invention = repo.findById(id).get();

            // Delete invention image
            Path imagePath = Paths.get("public/images/" + invention.getImageFileName());

            try {
                Files.delete(imagePath);
            } catch (Exception ex) {
                System.out.println("Exception: " + ex.getMessage());
            }

            // Delete the invention
            repo.delete(invention);
        } catch (Exception ex) {
            System.out.println("Exception: " + ex.getMessage());
        }

        return "redirect:/inventions";
    }
}
