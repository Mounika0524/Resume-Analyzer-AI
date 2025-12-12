package com.codegnan.service;

import java.util.Map;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

@Service
public class OpenAIService {

    @Value("${openai.api.key}")
    private String apiKey;

    public String callAI(String text) {

        String prompt = "Analyze this resume:\n" + text;

        WebClient client = WebClient.builder()
                .baseUrl("https://api.openai.com/v1/")
                .defaultHeader(HttpHeaders.AUTHORIZATION, "Bearer " + apiKey)
                .build();

        Map<String, Object> request = Map.of(
                "model", "gpt-4.1-mini",
                "input", prompt
        );

        return client.post()
                .uri("responses")
                .bodyValue(request)
                .retrieve()
                .bodyToMono(String.class)
                .block();
    }
}
