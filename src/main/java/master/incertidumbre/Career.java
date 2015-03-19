package master.incertidumbre;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Career implements Comparable<Career>{
    private String profession;
    private double probability;

    public Career() {} // JAXB needs this

    public Career(String profession, double probability) {
        this.profession = profession;
        this.probability = probability;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public double getProbability() {
        return probability;
    }

    public void setProbability(double probability) {
        this.probability = probability;
    }

    @Override
    public int compareTo(Career o) {
        if(this.getProbability()>o.getProbability()){
            return -1;
        }else{
            return 1;
        }
    }

    @Override
    public String toString() {
        return "Career{" + "profession=" + profession + ", probability=" + probability + '}';
    }
}