class Solution {
  int myAtoi(String s) {
    s = s.trimLeft();
    while (s.isNotEmpty) {
      final value = int.tryParse(s);
      if (value != null) {
        if (value < -2147483648) {
          return -2147483648;
        } else {
          if (value > 2147483647) {
            return 2147483647;
          }
        }
        return value;
      }
      s = s.substring(0, s.length - 1);
    }
    return 0;
  }
}
