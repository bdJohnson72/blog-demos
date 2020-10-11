/**
 * Created by bjohnson on 8/13/20.
 */

public with sharing class Car {
    public String make {private get; private set;}
    Public String model {get; private set;}
    Public Integer year {get; set;}
    private String secretCode;


    public Car() {
        this.make = 'Unknown'; this.model = 'Unknown'; this.year = 1900;

    }

    public Car(String make, String model) {
        this.make = make; this.model = model; year = 1900;
    }

    public Car(String make, String model, Integer year) {
        this.make = make; this.model = model; this.year = year;
        this.secretCode = Crypto.getRandomInteger();
    }

}