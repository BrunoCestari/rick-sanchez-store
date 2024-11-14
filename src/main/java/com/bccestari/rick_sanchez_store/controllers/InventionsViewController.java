// Controls the inventions views for the user interface.

package com.bccestari.rick_sanchez_store.controllers;

import com.bccestari.rick_sanchez_store.models.Invention;
import com.bccestari.rick_sanchez_store.services.InventionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}

