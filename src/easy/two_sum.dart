typedef Index = int;
typedef Value = int;

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<Value, Index> map = {};
    for (int index = 0; index < nums.length; index++) {
      int complement = target - nums[index];
      if (map.containsKey(complement)) {
        return [map[complement]!, index];
      }
      map[nums[index]] = index;
    }
    return [];
  }
}
