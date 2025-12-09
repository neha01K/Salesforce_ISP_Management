public class SetDemo2 {
    public void setMethod(){
        Set<String> strSet = new Set<String>();
        strSet.add('India');
        List<String> duplicateList= new List<String>{'A', 'A'};
        System.debug('duplicateList '+ duplicateList);
        strSet.addAll(duplicateList);   
        System.debug('Set => '+ strSet);
        strSet.clear();
        strSet.add('Minion');
        Boolean doesItContain = strSet.contains('minion');
        System.debug('Does it contain "minion"? ->'+ doesItContain);
        
        List<String> listToCompare = new List<String>{'Bharat'};
        Set<String> setToCompare = new Set<String>{'Bharatpur'};
        System.debug(setToCompare.containsAll(listToCompare));    
    }
}