class Solution {
  List<int> plusOne(List<int> digits) {
    int buffer = 1;
    for (int i = digits.length - 1; i >= 0; i--) {
      digits[i] = digits[i] + buffer;
      if (digits[i] > 9) {
        digits[i] = 0;
        buffer = 1;
      } else {
        buffer = 0;
      }
    }
    if (buffer == 1) {
      digits.insert(0, 1);
    }
    return digits;
  }
}
