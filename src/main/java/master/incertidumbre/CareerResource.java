package master.incertidumbre;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.UriInfo;
import java.util.List;

@Path("/career")
public class CareerResource {

    @GET
    @Produces("application/json;charset=utf-8")
    @Consumes("application/json")
    public List<Career> calculate(@Context UriInfo uriInfo) {
        CareerService service = CareerService.getInstance();

        MultivaluedMap<String, String> queryParams = uriInfo.getQueryParameters();

        for (String key : queryParams.keySet()){
            String rawValue = queryParams.get(key).get(0);
            service.setEvidence(key, rawValue);
        }

        return service.getRanking();
    }
}
