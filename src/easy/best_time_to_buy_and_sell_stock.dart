import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;

    if (prices.isEmpty) {
      return maxProfit;
    }

    int minProfit = prices[0];
    for (int index = 1; index < prices.length; index++) {
      if (minProfit > prices[index]) {
        minProfit = prices[index];
      } else {
        maxProfit = max(maxProfit, prices[index] - minProfit);
      }
    }

    return maxProfit;
  }
}
