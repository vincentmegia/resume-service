package com.stupendousware.resume.controllers;

import com.stupendousware.resume.models.Resume;
import com.stupendousware.resume.repositories.ResumeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/resumes")
public class ResumeController {
    @Autowired
    private ResumeRepository resumeRepository;

    /**
     * gets all
     * @return
     */
    @GetMapping("/")
    public List<Resume> getAll() {
        return resumeRepository.findAll();
    }

    /**
     * Gets specific
     * @param id
     * @return
     */
    @GetMapping("/resume/{id}")
    public Resume getById(@PathVariable("id") Long id) {
        return resumeRepository.getById(id);
    }

    /**
     * add new one
     *
     * @return
     */
    @PostMapping("/resume")
    public Resume add(@RequestBody Resume resume) {
        return resumeRepository.save(resume);
    }

    /**
     * updates existing
     *
     * @return
     */
    @PutMapping("/resume")
    public Resume update(@RequestBody Resume resume) {
        return resumeRepository.save(resume);
    }

    /**
     * Delete
     */
    @DeleteMapping("/resume/{id}")
    public void delete(@PathVariable("id") Long id) {
        resumeRepository.deleteById(id);
    }
}
