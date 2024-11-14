package com.bccestari.rick_sanchez_store.services;

import com.bccestari.rick_sanchez_store.models.Invention;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InventionsRepository extends JpaRepository<Invention, Integer> {
}
