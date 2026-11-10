public with sharing class CommissionCalculator {
   
    public static Decimal calculate(Decimal amount) {
        if (amount == null || amount < 0) {
            throw new IllegalArgumentException(
                'Amount must be zero or greater'
            );
        }

        Decimal rate = 0.07; // 7% commission rate
        return (amount * rate).setScale(2);
    }
}