public class SetDemo {
    public void setMethod(){
        Set<String> strSet = new Set<String>();
        strSet.add('India');
        List<String> duplicateList= new List<String>{'A', 'A'};
        System.debug('duplicateList '+ duplicateList);
        strSet.addAll(duplicateList);   
        System.debug('Set => '+ strSet);
        strSet.clear();
        strSet.add('Minion');
        Boolean doesItContain = strSet.contains('Minion');
        System.debug('Does it contain "minion"? ->'+ doesItContain);
    }
}