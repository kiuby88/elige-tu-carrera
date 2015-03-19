package master.incertidumbre;

import org.apache.commons.io.IOUtils;
import smile.Network;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class CareerService {
    private Network net;
    private String[] nodes;
    private static CareerService instance;

    private static final String[] BOOLEAN_INPUT_KEYS = new String[]{
            "Historia", "Creatividad", "Calculo", "Redaccion", "Manualidades", "Lenguajes", "Liderazgo",
            "Don_de_gentes",
            "Musica", "Deportes", "Videojuegos", "Lectura", "Gastronomia", "Peliculas", "Viajar", "Bricolaje", "Politica", "Economia", "Animales", "Ciencia", "Biologia", "Tecnologia", "Puzzles", "Internet"};
    private CareerService(){
        net = new Network();

        try {
            String netAsString = IOUtils.toString(getClass().getResourceAsStream("/red.xdsl"), "UTF-8");
            net.readString(netAsString);
            nodes = net.getAllNodeIds();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static CareerService getInstance(){
        if (instance == null) {
            instance = new CareerService();
        }
        return instance;
    }

    public synchronized void setEvidenceFromId(String nodeId, String state){
        net.setEvidence(nodeId, state);
    }

    public synchronized void setEvidenceFromName(String nodename, String state){
        String nodeId = getNodeIdFromName(nodename);
        setEvidenceFromId(nodeId, state);
    }
    
    public List<Career> getRanking(){

        // Setting NO for default evidences
        //setDefaultEvidences();

        net.updateBeliefs();
        List<Career> targetNodes = new ArrayList<Career>();
        for(int i=0;i<nodes.length;i++){
            if(net.getChildren(nodes[i]).length==0){
                targetNodes.add(new Career(net.getNodeName(nodes[i]),net.getNodeValue(nodes[i])[0]));
            }
        }
        Collections.sort(targetNodes);
        return targetNodes;
    }

    private void setDefaultEvidences() {
        for (String key: BOOLEAN_INPUT_KEYS) {
            int nodeId = net.getNode(key);
            if (!net.isEvidence(nodeId)) {
                net.setEvidence(nodeId, "NO");
            }
        }
    }

    private String getNodeIdFromName(String name){
        for(int i=0;i<nodes.length;i++){
            if(net.getNodeName(nodes[i]).equals(name)){
                return nodes[i];
            }
        }
        return null;
    }

    public boolean isValidKey(String key){
        return Arrays.asList(nodes).contains(key);
    }

    public void clearAllEvidences(){
        net.clearAllEvidence();
    }
}
