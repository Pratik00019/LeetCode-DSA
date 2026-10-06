class Solution {
public:
    void sortColors(vector<int>& nums) {
        int pointer1=0;
        int pointer2=nums.size()-1;

        for(int i=0;i<nums.size();i++){
            if(nums[i]==0){
                swap(nums[i],nums[pointer1++]);
            }
        }

        for(int i=pointer1;i<nums.size();i++){
            if(nums[i]==1){
                swap(nums[i],nums[pointer1++]);
            }
        }
    }
};