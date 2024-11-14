package com.bccestari.rick_sanchez_store.models;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import org.springframework.web.multipart.MultipartFile;

public class InventionDto {

    @NotEmpty(message = "The name is required.")
    private String name;

    @NotEmpty(message = "The category is required.")
    private String category;

    @Min(0)
    private double price;

    @Size(min = 10, message = "The description should be at least 10 characters.")
    @Size(max = 20000, message = "The description cannot exceed characters.")
    private String description;

    private MultipartFile imageFile;




    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public MultipartFile getImageFile() {
        return imageFile;
    }

    public void setImageFile(MultipartFile imageFile) {
        this.imageFile = imageFile;
    }
}