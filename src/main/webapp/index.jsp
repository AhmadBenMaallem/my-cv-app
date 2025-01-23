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
            border-radius: 40%;
            width: 150px;
            height: 180px;
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
            display: flex; /* Use flexbox */
            justify-content: center; /* Center the items horizontally */
            flex-wrap: wrap; /* Allow wrapping of items */
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

        /* Define the animation */
        @keyframes colorChange {
              0% {
                color: blue;
              }
              25% {
                color: green;
              }
              50% {
                color: red;
              }
              75% {
                color: purple;
              }
              100% {
                color: blue;
              }
            }

            /* Apply the animation to the link */
            a {
                  text-decoration: none; /* Optional: remove underline */
                  font-size: 1.5em; /* Optional: make the link bigger */
                  animation: colorChange 3s infinite; /* Animation over 3 seconds, loops infinitely */
            }
    </style>
</head>
<body>

    <!-- Banner (Header) Section -->
    <header>
        <img src="assets/profile.jpg" alt="Profile Picture">
        <h1>Welcome to My CV</h1>
        <p>Tech Lead Nuxeo | Cloud | DevOps | Big Data</p>
    </header>

    <!-- Navigation Bar -->
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="skills.jsp">Skills</a>
        <a href="contact.jsp">Contact</a>
        <a href="download.jsp">Download CV</a>
    </nav>

    <!-- Main Content Section -->
    <div class="container">
        <!-- About Me Section -->
        <div class="section">
            <h2>About Me</h2>
            <p>I am a Tech Lead Nuxeo at Qualitified with extensive experience in Cloud Development, DevOps, and Big Data. I thrive in fast-paced environments and love solving complex technical challenges. Below are some key areas of my expertise:</p>
        </div>

        <!-- Cloud Section -->
        <div class="section">
            <h2>Cloud</h2>
            <p>My experience in cloud computing spans designing and implementing cloud solutions using platforms like AWS, Azure, and Google Cloud. I have hands-on experience in setting up scalable architectures, optimizing costs, and automating infrastructure with Infrastructure as Code (IaC) tools such as Terraform and AWS CloudFormation.</p>
        </div>

        <!-- DevOps Section -->
        <div class="section">
            <h2>DevOps</h2>
            <p>DevOps practices are central to my work. I implement Continuous Integration and Continuous Deployment (CI/CD) pipelines using tools like Jenkins, GitLab CI, and CircleCI. I also focus on automation, monitoring, and improving the developer workflow to ensure seamless collaboration between development and operations teams.</p>
        </div>

        <!-- Big Data Section -->
        <div class="section">
            <h2>Big Data</h2>
            <p>In the Big Data field, I have experience working with large-scale data processing tools like Apache Hadoop, Spark, and Kafka. I have designed solutions for real-time data streaming, data warehousing, and batch processing, enabling businesses to extract valuable insights from large datasets in an efficient manner.</p>
        </div>

        <!-- Nuxeo Section -->
        <div class="section">
            <h2>Nuxeo</h2>
            <p>As a Tech Lead at Nuxeo, I have worked with the Nuxeo platform to deliver powerful enterprise content management solutions. I specialize in configuring and customizing Nuxeo to meet the unique needs of organizations, ensuring seamless integration with other systems, and optimizing workflows for better productivity and collaboration.</p>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Tech Lead | Nuxeo. All rights reserved.</p>
    </footer>

</body>
</html>
