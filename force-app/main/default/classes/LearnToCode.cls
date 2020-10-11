/**
 * Created by bjohnson on 9/7/20.
 */

public with sharing class LearnToCode {

    public static void sayHello(){
        for(Integer i = 0; i < 10; i++){
            System.debug('Hello World');
        }
        List<String> names = new List<String>();
        names.add('Brooks');
        names.add('Ino');
        System.debug(names[0]);
    }

}