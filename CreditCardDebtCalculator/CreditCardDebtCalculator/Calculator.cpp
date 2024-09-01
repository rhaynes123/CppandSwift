//
//  Calculator.cpp
//  CreditCardDebtCalculator
//
//  Created by richard Haynes on 8/31/24.
//
#include <iostream>
#include <cmath>
#include "Calculator.hpp"
const float Calculate(float principalAmount
                      , float AnnualPercentageRate
                      , int PeriodInDays
                      , float latePaymentFees
                      , float previousTotalPayments) {
    if (principalAmount < 0 || AnnualPercentageRate <= 0) {
        return -1;
    }
    float dailyInterestRate = AnnualPercentageRate / 365.0;
    float interest = pow(1 + dailyInterestRate, PeriodInDays);
    float compoundedPrincipal = principalAmount * interest;
    return std::round((compoundedPrincipal + latePaymentFees - previousTotalPayments) * 100.0) / 100.0;
}
