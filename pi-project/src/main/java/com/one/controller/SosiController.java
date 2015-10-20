package com.one.controller;

import com.one.dao.ScheduleRepository;
import com.one.dao.SosiRepository;
import com.one.models.Sosi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by jared on 15. 1. 2..
 */
@RestController
@RequestMapping("/sosi")
public class SosiController {

    @Autowired
    private SosiRepository sosiRepository;

    @RequestMapping("{sosiId}")
    public Sosi getSosi(@PathVariable Long sosiId) {
        Sosi sosi = sosiRepository.findOne(sosiId);
        return sosi;
    }
    @RequestMapping("all")
    public List<Sosi> getSosiAll() {
        List<Sosi> List = sosiRepository.findAll();
        
        return List;
    }
}