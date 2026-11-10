
/**
 * @description Calculates commission for sales transactions.
 *              Uses the standard commission rate of 7%.
 */
public with sharing class CommissionCalculator {

    /**
     * @description Calculates commission based on the
     *              supplied transaction amount.
     * @param amount The transaction amount.
     * @return The calculated commission amount.
     */
    public static Decimal calculate(Decimal amount) {

        if (amount == null || amount < 0) {
            throw new IllegalArgumentException(
                'Amount must be zero or greater'
            );
        }

        Decimal rate = 0.07;// Standard commission rate of 7%

        return (amount * rate).setScale(2);
    }
}
