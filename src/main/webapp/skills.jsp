<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Me - Tech Lead at Nuxeo</title>
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
            /* (Rest of the styles remain the same) */
        </style>
    </head>
    <body>
    
        <!-- Banner (Header) Section -->
        <header>
            <img src="assets/profile.jpg" alt="Profile Picture">
            <h1>About Me</h1>
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

    <!-- Skills Section -->
    <h1>Key Skills</h1>
    <ul>
        <li>Cloud Platforms: AWS, Azure, Google Cloud</li>
        <li>DevOps: Jenkins, Docker, Kubernetes</li>
        <li>Big Data Technologies: Hadoop, Spark, Kafka</li>
        <li>Leadership & Team Mentoring</li>
    </ul>

</body>
</html>
