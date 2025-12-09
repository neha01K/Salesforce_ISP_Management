public class PriceCalculationRequest {
	@InvocableVariable(required=true)
    public Decimal planPrice;

    @InvocableVariable(required=true)
    public Decimal discountPercent;
}