@isTest
public class EventUtilityTest {
    
	@isTest
    private static void testEventStatusLength(){
        String res = EventUtility.eventPriority('INDIA');
        System.assertEquals(null, res);
    }
    
    @isTest
    private static void testHighPriority(){
        String res = EventUtility.eventPriority('CA');
        System.assertEquals('High', res);
    }
    
    @isTest
    private static void testMediumPriority(){
        String res = EventUtility.eventPriority('BA');
        System.assertEquals('Medium', res);
    }
    
}