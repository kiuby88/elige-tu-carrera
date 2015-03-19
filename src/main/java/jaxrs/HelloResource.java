package jaxrs;

import service.HelloWorld;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/")
@Singleton
public class HelloResource {

    @Inject HelloWorld helloWord;

    @GET
    @Path("/hello.json")
    @Produces(MediaType.APPLICATION_JSON)
    public Data getJsonMessage() {
        return new Data(helloWord.say());
    }


    public static class Data {

        private final String text;

        public Data(String data) {
            this.text = data;
        }

        public String getData() {
            return text;
        }
    }
}
