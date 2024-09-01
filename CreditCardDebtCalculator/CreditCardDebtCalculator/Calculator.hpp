//
//  Calculator.hpp
//  CreditCardDebtCalculator
//
//  Created by richard Haynes on 8/31/24.
//

//#ifndef Calculator_hpp
//#define Calculator_hpp
//
//#include <stdio.h>
//
//#endif /* Calculator_hpp */

#ifdef __cplusplus
extern "C"
{
#endif
const float Calculate(float principalAmount
                      , float AnnualPercentageRate
                      , int PeriodInDays
                      , float latePaymentFees
                      , float previousTotalPayments);
#ifdef __cplusplus
}
#endif
