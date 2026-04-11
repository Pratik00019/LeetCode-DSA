class Solution {
public:
    int minimumDistance(vector<int>& nums) {
        int n = nums.size();
        vector<int> next(n,-1);

        unordered_map<int,int> mpp;
        int ans=INT_MAX;

        for(int i = n-1;i>-1;i--){
            if(mpp.count(nums[i])!=0){
                next[i]=mpp[nums[i]];
            }
            mpp[nums[i]]=i;
        }
        for(int i=0;i<n;i++){
            if(next[i]!=-1){
                if(next[next[i]]!=-1){
                    int k = 2* (next[next[i]]- i);
                    ans = min(ans, k);
                }
            }
        }
        return ans==INT_MAX ? -1 :ans;
    }
};