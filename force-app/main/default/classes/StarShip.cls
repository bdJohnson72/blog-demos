/**
 * Created by bjohnson on 6/18/20.
 */

public with sharing class StarShip {
    public String name;
    public String captain;
    public Integer crewSize;

    public StarShip(String name, String captain, Integer crewSize){
        this.name = name; this.captain = captain; this.crewSize = crewSize;
    }


    public static void landShip(){
        System.debug('The ship has landed');
    }

    public static void fireWeapons(){
        System.debug('pew pew pew');
    }

    public void beamDown(Integer numToBeamDown){
        crewSize -= numToBeamDown;
        System.debug(crewSize);
    }

    public void beamUp(Integer numToBeamUp){
        crewSize += numToBeamUp;
        System.debug(crewSize);
    }

}