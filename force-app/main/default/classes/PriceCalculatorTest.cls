@IsTest
public class PriceCalculatorTest {

    private static PriceCalculationRequest buildRequest(Decimal price, Decimal discount) {
        PriceCalculationRequest request = new PriceCalculationRequest();
        request.planPrice = price;
        request.discountPercent = discount;
        return request;
    }

    @IsTest
    static void testSingleCalculation() {
        List<PriceCalculationRequest> inputList = new List<PriceCalculationRequest>{
            buildRequest(500, 20)
        };

        List<PriceCalculationResponse> result = PriceCalculator.calculate(inputList);

        System.assertEquals(1, result.size());
        Decimal expected = 400;
        System.assertEquals(expected, result[0].totalAmount);
    }

    @IsTest
    static void testZeroDiscount() {
        List<PriceCalculationRequest> inputList = new List<PriceCalculationRequest>{
            buildRequest(1000, 0)
        };

        List<PriceCalculationResponse> result = PriceCalculator.calculate(inputList);

        System.assertEquals(1000, result[0].totalAmount);
    }

    @IsTest
    static void testFullDiscount() {
        List<PriceCalculationRequest> inputList = new List<PriceCalculationRequest>{
            buildRequest(750, 100)
        };

        List<PriceCalculationResponse> result = PriceCalculator.calculate(inputList);

        System.assertEquals(0, result[0].totalAmount);
    }

    @IsTest
    static void testMultipleRequestsBulk() {
        List<PriceCalculationRequest> inputList = new List<PriceCalculationRequest>{
            buildRequest(200, 10),
            buildRequest(1000, 50),
            buildRequest(999.99, 1)
        };

        List<PriceCalculationResponse> result = PriceCalculator.calculate(inputList);

        System.assertEquals(3, result.size());
        System.assertEquals(180, result[0].totalAmount);
        System.assertEquals(500, result[1].totalAmount);
        System.assertEquals(989.99, result[2].totalAmount.setScale(2));
    }

    @IsTest
    static void testNegativeDiscount() {
        List<PriceCalculationRequest> inputList = new List<PriceCalculationRequest>{
            buildRequest(300, -10)
        };

        List<PriceCalculationResponse> result = PriceCalculator.calculate(inputList);

        Decimal expected = 330;
        System.assertEquals(expected, result[0].totalAmount);
    }
}