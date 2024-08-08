class Solution {
  int maxProfit(List<int> prices) {
    int profit = 0;
    if (prices.isEmpty) {
      return profit;
    }

    int minPrice = prices[0];
    for (int price in prices) {
      if (price > minPrice) {
        profit += price - minPrice;
      }
      minPrice = price;
    }

    return profit;
  }
}
