package utility;

public class DistanceCalcul {

    public double distBtw2Pts(double latA, double lonA, double latB, double lonB){


        int rTerre = 6367445;

        double result = rTerre*(Math.acos(Math.sin(Math.toRadians(latA))*Math.sin(Math.toRadians(latB))+Math.cos(Math.toRadians(latA))*Math.cos(Math.toRadians(latB))*Math.cos(Math.toRadians(lonA-lonB))));

        return result;
    }

}
