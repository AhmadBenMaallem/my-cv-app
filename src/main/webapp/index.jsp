<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My CV - Tech Lead</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7f6;
            color: #333;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        header img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            margin-bottom: 15px;
        }
        nav {
            text-align: center;
            background-color: #333;
            padding: 10px;
        }
        nav a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            display: inline-block;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <!-- Display Profile Picture -->
        <img src="assets/profile.jpg" alt="Profile Picture">
        <h1>Welcome to My CV</h1>
        <p>Tech Lead at Nuxeo | Cloud | DevOps | Big Data</p>
    </header>

    <!-- Navigation Section -->
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="skills.jsp">Skills</a>
        <a href="contact.jsp">Contact</a>
        <a href="download.jsp">Download CV</a>
    </nav>

    <!-- Main Content Section -->
    <div class="container">
        <!-- About Section -->
        <div class="section">
            <h2>About Me</h2>
            <p>I am a Tech Lead at Nuxeo with extensive experience in Cloud Development, DevOps, and Big Data. I thrive in fast-paced environments and love solving complex technical challenges. Below are some key areas of my expertise:</p>
        </div>

        <!-- Skills Section -->
        <div class="section">
            <h2>Key Skills</h2>
            <ul>
                <li>Tech Lead Experience at Nuxeo</li>
                <li>Cloud Development & Architecture</li>
                <li>DevOps Practices & CI/CD</li>
                <li>Big Data Solutions & Analytics</li>
                <li>Leadership & Mentoring</li>
            </ul>
        </div>

        <!-- Contact Section -->
        <div class="section">
            <h2>Contact</h2>
            <p>If you'd like to connect or discuss potential opportunities, feel free to reach out to me!</p>
            <p>Email: <a href="mailto:your.email@example.com">your.email@example.com</a></p>
        </div>

        <!-- Download Section -->
        <div class="section">
            <h2>Download My CV</h2>
            <p>You can download my detailed resume below:</p>
            <a href="download.jsp">Download CV (PDF)</a>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Tech Lead | Nuxeo. All rights reserved.</p>
    </footer>

</body>
</html>
