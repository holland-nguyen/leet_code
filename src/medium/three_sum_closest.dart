class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();
    int? result;
    for (int i = 0; i < nums.length - 2; i++) {
      if (i == 0 || i > 0 && nums[i] != nums[i - 1]) {
        int low = i + 1;
        int high = nums.length - 1;
        int sum = target - nums[i];
        while (low < high) {
          if (nums[low] + nums[high] == sum) {
            return target;
          } else {
            if (result == null ||
                (result - target).abs() >
                    (nums[low] + nums[high] + nums[i] - target).abs()) {
              result = nums[low] + nums[high] + nums[i];
            }
            if (nums[low] + nums[high] < sum) {
              low++;
            } else {
              high--;
            }
          }
        }
      }
    }
    return result!;
  }
}
