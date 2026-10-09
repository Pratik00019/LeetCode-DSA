class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        int poi1=0;
        int poi2=nums.size();
        int target = 0;

        sort(nums.begin(),nums.end());
        vector<vector<int>> ans;

        for(int i =0;i<nums.size();i++){
            if(i>0 && nums[i]==nums[i-1])
                continue;
            target = 0 - nums[i];
            poi1=i+1;
            poi2=nums.size()-1;
            while(poi1<poi2){
                if(nums[poi1]+nums[poi2]==target){
                    ans.push_back({nums[i], nums[poi1],nums[poi2]});
                    while(poi1<poi2 && nums[poi1]==nums[poi1+1]) poi1++;
                    while(poi1<poi2 && nums[poi2]==nums[poi2-1]) poi2--;
                }
                if(nums[poi1]+nums[poi2] < target){
                    poi1++;
                }
                else{
                    poi2--;
                }
            }
        }

        return ans;
    }
};