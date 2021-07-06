package ec.edu.espe.controller;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Kevin Duy
 */
public class VideogameController {
    
    public static void main(String[] args) {
        try {
            MongoClient mongoClient = MongoClients.create("mongodb+srv://kjduy:"
                    + "MongoDB!secomiomis6deberes@cluster0.rkori.mongodb.net/videogames?retryWrites=true");
            MongoDatabase database = mongoClient.getDatabase("videogames");
            MongoCollection<Document> collection = database.getCollection("videogames");
            Document query = new Document();
            query.put("name", "Zelda: Breath of the Wild");
            query.put("price", "60");
            query.put("platform", "Nintendo Switch");
            query.put("genre", "Adventure");
            query.put("releaseDate", "03/03/2017");
            collection.insertOne(query);
        }
        catch(Exception e) {
            
        }
                
    }
}
