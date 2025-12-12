# Resume Analyze AI

A Spring Boot-based web application that analyzes a user’s resume using Google’s Gemini AI model.  
Users can upload PDF, DOCX, or TXT resumes and get AI-generated feedback on strengths, missing skills, grammar improvements, and job suitability.

---

# 🔍 Features

- Upload resumes (PDF, DOCX, TXT)  
- Extract text using Apache Tika  
- Call Google Gemini AI REST API for analysis  
- Display AI response on UI  
- Simple, intuitive frontend using JSP, HTML, CSS & JavaScript  

---

# 🧱 Project Modules

### Controllers
- **ResumeController** → Handles file upload & AI analysis  
- **ViewController** → Loads `upload.jsp` UI  

### Services
- **AIService** → Calls Gemini API  
- **TextExtractor** → Extracts text from resumes  

---

# 🗂 Project Structure
```bash
src/main/java/com/codegnan
│
├── controller
│   ├── ResumeController.java
│   └── ViewController.java
│
├── service
│   ├── AIService.java
│   └── TextExtractor.java
│
└── ResumeAnalyzeAiApplication.java
```

## ⚙️ Setup & Installation
### 1️⃣ Clone the project
```
git clone https://github.com/VArchana456/Resume_Analayze_AI.git
cd Resume_Analayze_AI
```
### 2️⃣ Add Your Gemini API Key
```
gemini.api.key=YOUR_API_KEY
gemini.api.url=https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent
```
### 3️⃣ Build & Run
```
mvn clean install
mvn spring-boot:run
```

## 🌐 Access the Application
Open your browser and go to:
```
http://localhost:9090/
```
Upload a resume and get AI-generated analysis instantly.
