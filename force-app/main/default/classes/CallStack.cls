/**
 * Created by bjohnson on 8/2/20.
 */

public with sharing class CallStack {

    public  void methodA(){
        System.debug('In method A');
        methodB();
        System.debug('Method A is done');
    }

    private void methodB(){
        System.debug('In method B');
        methodC();
        System.debug('method B is done');
    }
    private void methodC(){
        System.debug('In method c');
    }

}