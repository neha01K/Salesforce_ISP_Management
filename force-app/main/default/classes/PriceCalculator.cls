public class PriceCalculator {
    
	@InvocableMethod(label='Calculate Total Internet Plan Amount')
    public static List<PriceCalculationResponse> calculate(List<PriceCalculationRequest> requests) {
        
        List<PriceCalculationResponse> results = new List<PriceCalculationResponse>();

        for (PriceCalculationRequest request : requests) {
            Decimal discountAmount = (request.planPrice * request.discountPercent) / 100;
            Decimal finalAmount = request.planPrice - discountAmount;

            PriceCalculationResponse response = new PriceCalculationResponse();
            response.totalAmount = finalAmount.setScale(2);
            results.add(response);
        }
        return results;
    }
}