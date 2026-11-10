@isTest
private class CommissionCalculatorTest {
   
   @IsTest
    static void testCommissionCalculation() {
        Decimal result =
            CommissionCalculator.calculate(1000);

        System.assertEquals(
            80.00,
            result,
            'Commission should be 8%'
        );
    }

    @IsTest
    static void testInvalidAmount() {
        Boolean exceptionThrown = false;

        try {
            CommissionCalculator.calculate(-100);
        } catch (IllegalArgumentException e) {
            exceptionThrown = true;
        }

        System.assert(
            exceptionThrown,
            'Negative amounts should be rejected'
        );
    }
}