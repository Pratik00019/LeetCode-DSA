class Solution {
public:
    void nextPermutation(vector<int>& nums) {
        int idx = nums.size()-1;
        int pivot = -1;

        while(idx>0){
            if(nums[idx]>nums[idx-1]){
                pivot = idx-1;
                break;
            }
            idx--;
        }
        if(pivot==-1){
            sort(nums.begin(), nums.end());
            return ;
        }

        
        int successor = INT_MAX;
        int sucInd = nums.size();
        while(idx<nums.size()){
            if(nums[idx]>nums[pivot]){
                if(abs(nums[idx]-nums[pivot]) <= successor){
                    successor = abs(nums[idx]-nums[pivot]);
                    sucInd = idx;
                }
            }
            idx++;         
        }

        swap(nums[sucInd],nums[pivot]);

        //cout<<pivot<<" "<<sucInd<<endl;

        sort(nums.begin()+pivot+1 ,nums.end());

    }
};