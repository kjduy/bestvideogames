<%-- 
    Document   : saveVideogame
    Created on : 05/07/2021, 17:38:08
    Author     : Kevin Duy
--%>

<%@page import="com.mongodb.client.MongoClient"%>
<%@page import="com.mongodb.client.MongoClients"%>
<%@page import="com.mongodb.MongoClientSettings"%>
<%@page import="com.mongodb.ConnectionString"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.MongoClientURI"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/styleForm.css">
        <title>Save Videogame</title>
    </head>
    <body>
        <h1>Save Videogame</h1>
        <%
            try {
                ConnectionString connectionString = new ConnectionString("mongodb+srv://kjduy:MongoDB!secomiomis6deberes@cluster0.rkori.mongodb.net/videogames?retryWrites=true&w=majority");
                MongoClientSettings settings = MongoClientSettings.builder()
                        .applyConnectionString(connectionString)
                        .build();
                MongoClient mongoClient = MongoClients.create(settings);
                MongoDatabase database = mongoClient.getDatabase("videogames");
                MongoCollection<Document> collection = database.getCollection("videogames");
                Document query = new Document("name", "Mario Kart 8 Deluxe");
                Document result = collection.find(query).iterator().next();
                result.getString("platform");
            }
            catch(Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
