public class ListDemo {
    public void listDemoMethod(){
        List<String> listOfCountry = new List<String>();
        listOfCountry.add('India');
        listOfCountry.add('Pakistan');
        listOfCountry.add('China');
        listOfCountry.add('Kazakistan');
        System.debug(listOfCountry);
        
        Boolean doesItContain = listOfCountry.contains('India');
        System.debug('List contains India: '+ doesItContain);
        
        List<String> clonedList = listOfCountry.clone();
        Boolean isEqual = clonedList.equals(listOfCountry);
        System.debug('Both list are equal: '+isEqual);
        
        SObject sObjRecord = [Select Id, Name from Account limit 1];
        System.debug(sObjRecord.getSObjectType()+' Ok!'); 
         
        Integer indexValue = clonedList.indexOf('Pakistan');
        System.debug(indexValue);  
        
        listOfCountry.sort();
        System.debug(listOfCountry);
    } 

}