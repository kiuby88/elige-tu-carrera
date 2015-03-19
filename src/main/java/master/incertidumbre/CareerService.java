package master.incertidumbre;

import org.apache.commons.io.IOUtils;
import smile.Network;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CareerService {
    private Network net;
    private String[] nodes;
    private static CareerService instance;

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
    
    public synchronized void setEvidence(String nodename, String state){
        String nodeId = getNodeIdFromName(nodename);
        net.setEvidence(nodeId, state);
    }
    
    public List<Career> getRanking(){
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
    
    private String getNodeIdFromName(String name){
        for(int i=0;i<nodes.length;i++){
            if(net.getNodeName(nodes[i]).equals(name)){
                return nodes[i];
            }
        }
        return null;
    }
}
