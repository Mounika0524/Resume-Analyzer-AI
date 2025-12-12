package com.codegnan.controller;

import com.codegnan.service.OpenAIService;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ResumeAnalyzerController {

    @Autowired
    OpenAIService aiService;

    @PostMapping("/analyze")
    public String analyzeResume(@RequestParam("file") MultipartFile file, Model model) {

        try {
            // Convert PDF to text
            PDDocument doc = PDDocument.load(file.getInputStream());
            PDFTextStripper stripper = new PDFTextStripper();
            String text = stripper.getText(doc);
            doc.close();

            // Send to AI
            String result = aiService.callAI(text);

            model.addAttribute("analysis", result);

        } catch (Exception e) {
            model.addAttribute("analysis", "Error processing file: " + e.getMessage());
        }

        return "result";
    }
}
