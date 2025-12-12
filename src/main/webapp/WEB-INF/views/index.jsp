<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resume Analyzer</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #eef2f3;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background: #fff;
            width: 450px;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input[type="file"] {
            padding: 10px;
            background: #f7f7f7;
            border-radius: 6px;
            width: 100%;
            border: 1px solid #ccc;
            margin-bottom: 20px;
        }

        button {
            background: #007bff;
            padding: 12px 25px;
            border: none;
            border-radius: 6px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background: #0056b3;
        }
    </style>

</head>
<body>

<div class="container">
    <h2>Upload Resume (PDF)</h2>

    <form action="/analyze" method="POST" enctype="multipart/form-data">
        <input type="file" name="file" required />
        <button type="submit">Analyze Resume</button>
    </form>
</div>

</body>
</html>
