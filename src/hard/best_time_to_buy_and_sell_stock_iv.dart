import 'dart:math';

class Solution {
  int maxProfit(int k, List<int> prices) {
    if (prices.isEmpty || k == 0) {
      return 0;
    }
    List<int> profits = [];
    int profit = 0;
    int previousPrice = prices[0];

    for (int price in prices) {
      if (price > previousPrice) {
        profit += (price - previousPrice);
      } else if (price < previousPrice) {
        profits.add(profit);
        profit = 0;
      }
      previousPrice = price;
    }
    if (profit != 0) {
      profits.add(profit);
    }

    profits.sort((a, b) => a.compareTo(b));

    profits.sublist(0, min(k, profits.length));

    final total =
        profits.fold(0, (previousValue, element) => previousValue + element);

    return total;
  }
}
