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
                background: url('assets/cloud.jpg') no-repeat center center fixed;
                background-size: cover;
                color: #fff;
            }
    
            header {
                text-align: center;
                padding: 40px;
                background-color: rgba(0, 0, 0, 0.5);
            }
    
            header img {
                border-radius: 50%;
                width: 150px;
                height: 150px;
                margin-bottom: 15px;
            }
    
            header h1 {
                margin: 10px 0;
                font-size: 2em;
            }
    
            header p {
                font-size: 1.2em;
            }
    
            nav {
                text-align: center;
                background-color: rgba(0, 0, 0, 0.8);
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
                background-color: rgba(0, 0, 0, 0.7);
                border-radius: 8px;
            }
    
            footer {
                background-color: rgba(0, 0, 0, 0.8);
                color: white;
                text-align: center;
                padding: 10px 0;
            }
    
            .section {
                margin-bottom: 40px;
            }
    
            h2 {
                color: #ac2424;
                text-align: left;
            }
    
            p {
                font-size: 1.1em;
                line-height: 1.6;
            }
        </style>
    </head>
    <body>
    
        <!-- Banner (Header) Section -->
        <header>
            <img src="assets/profile.jpg" alt="Profile Picture">
            <h1>Welcome to My CV</h1>
            <p>Tech Lead at Nuxeo | Cloud | DevOps | Big Data</p>
        </header>
    
        <!-- Navigation Bar -->
        <nav>
            <a href="index.jsp">Home</a>
            <a href="about.jsp">About</a>
            <a href="skills.jsp">Skills</a>
            <a href="contact.jsp">Contact</a>
            <a href="download.jsp">Download CV</a>
        </nav>

    <!-- About Section Content -->
    <div class="container">
        <h2>About Me</h2>
        <p>I am a Tech Lead Nuxeo with extensive experience in Cloud Development, DevOps, and Big Data. I thrive in fast-paced environments and love solving complex technical challenges.</p>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Tech Lead | Nuxeo. All rights reserved.</p>
    </footer>

</body>
</html>
