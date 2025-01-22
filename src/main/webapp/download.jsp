<%@ page contentType="application/pdf" %>
<%
    response.setHeader("Content-Disposition", "attachment; filename=resume.pdf");
    String filePath = application.getRealPath("/assets/resume.pdf");
    java.nio.file.Files.copy(java.nio.file.Paths.get(filePath), response.getOutputStream());
%>
