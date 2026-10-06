class Solution {
public:
    int maxProduct(vector<int>& nums) {
        int curr_min = nums[0];
        int curr_max = nums[0];

        int prev_min = nums[0];
        int prev_max = nums[0];

        int ans = nums[0];

        for(int j = 1; j<nums.size() ; j++){

            int i = nums[j];

            prev_min = curr_min;
            prev_max = curr_max;

            curr_min = min({
                i,
                prev_min*i,
                prev_max*i,
            });

            curr_max = max({
                i,
                prev_min*i,
                prev_max*i,
            });

            ans = max({ans,curr_min,curr_max});
        }

        return ans;
    }
};