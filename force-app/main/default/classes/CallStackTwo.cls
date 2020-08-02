/**
 * Created by bjohnson on 8/2/20.
 */

public with sharing class CallStackTwo {

    public Integer doSomeMath(Integer num){
        Integer finalResult = addition(num);
        System.debug('return to do some math with a value of ' + finalResult);
        return finalResult;
    }
    private Integer addition(Integer numtoAdd){
        Integer additionResult = numtoAdd + 5;
        System.debug('value of result in addition ' + additionResult);
         Integer response = multiply(additionResult);
        System.debug('return to addition with a value of ' + response);
        return response;
    }
    private Integer multiply(Integer numToMultiply){
        Integer multiplyResult = numToMultiply * 2;
        System.debug('value of result in multiply ' + multiplyResult);
        Integer response = subtract(multiplyResult);
        System.debug('Return to Multiply with value of ' + response);
        return response;
    }

    private Integer subtract(Integer numToSubtract){
        Integer subtractionResult = numToSubtract - 5;
        System.debug('value of result in subtraction ' + subtractionResult);
        return subtractionResult;
    }

}