class Solution {
  bool isNumber(String s) {
    s = s.trim();
    bool hasDot = false;
    bool hasE = false;
    bool hasNumber = false;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '+' || s[i] == '-') {
        if (i > 0 && s[i - 1] != 'e' && s[i - 1] != 'E') {
          return false;
        }
      } else if (s[i] == '.') {
        if (hasDot || hasE) {
          return false;
        }
        hasDot = true;
      } else if (s[i] == 'e' || s[i] == 'E') {
        if (hasE || !hasNumber) {
          return false;
        }
        hasE = true;
        hasNumber = false;
      } else if (int.tryParse(s[i]) != null) {
        hasNumber = true;
      } else {
        return false;
      }
    }
    return hasNumber;
  }
}
