public with sharing class ApexCollections {

    public static void apexLists(){
        //A list is an ordered collection of values
        //Duplicate values are allowed
       List<Integer> integerList = new List<Integer>();
        integerList.add(1);
        integerList.add(3);
        integerList.add(78);
        integerList.add(100);
        integerList.add(-101);
        integerList.add(78);
        System.debug(integerList.size());
        System.debug(integerList);
        System.debug(integerList[0]);
        System.debug(integerList[5]);
        Integer lastPlace = integerList.get(integerList.size() -1);
        System.debug(lastPlace);


    }
    public static void apexSets(){
      //Sets are unordered and automatically remove duplicates
        Set<Integer> integerSet = new Set<Integer>();
        integerSet.add(1);
        integerSet.add(1);
        integerSet.add(1);
        integerSet.add(78);
        integerSet.add(78);
        System.debug(integerSet.size());
        System.debug(integerSet);

   }
    public static void apexMaps(){
        //Maps are key value pairs of any data type
        Map<Integer, String> stringsByIntegers = new Map<Integer, String>();
        stringsByIntegers.put(1, 'Hello');
        stringsByIntegers.put(2, 'Good Bye');

        System.debug(stringsByIntegers.keySet());
        System.debug(stringsByIntegers.values());

        Map<Id, Contact> contactsByIds = new Map<Id, Contact>([SELECT Id, FirstName FROM Contact LIMIT 10]);
        System.debug(contactsByIds);
    }


}