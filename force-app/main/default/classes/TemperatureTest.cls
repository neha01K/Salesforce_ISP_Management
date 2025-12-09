@isTest
public class TemperatureTest {
    @isTest
    private static void warmTemperature(){
        Decimal result = Temperature.FToC(70);
        System.assertEquals(21.11, result);
    }
}