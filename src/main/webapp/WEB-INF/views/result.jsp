<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resume Analysis Result</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #eef2f3;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background: #fff;
            width: 80%;
            max-width: 900px;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #222;
        }

        pre {
            background: #f7f7f7;
            padding: 20px;
            border-radius: 8px;
            white-space: pre-wrap;
            font-size: 15px;
            line-height: 1.5;
            border: 1px solid #ddd;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 25px;
            text-decoration: none;
            background: #007bff;
            color: white;
            padding: 12px 18px;
            border-radius: 6px;
            width: 200px;
            margin-left: auto;
            margin-right: auto;
        }

        a:hover {
            background: #0056b3;
        }
    </style>

</head>
<body>

<div class="container">
    <h2>Resume Analysis Result</h2>

    <pre>${analysis}</pre>

    <a href="/">Analyze Another</a>
</div>

</body>
</html>
