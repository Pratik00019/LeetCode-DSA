class Solution {
public:
    vector<int> majorityElement(vector<int>& nums) {
        int candidate1=nums[0];
        int candidate2=nums[0];
        int counter1=0;
        int counter2=0;

        for(auto i:nums){
            if(candidate1==i)
                counter1++;
            else if(candidate2==i)
                counter2++;
            else if(counter1==0){
                candidate1=i;
                counter1=1;
            }
            else if(counter2==0){
                candidate2=i;
                counter2=1;
            }
            else{
                counter1--;
                counter2--;
            }
        }
        vector<int> ans;
        counter1=0;
        counter2=0;

        cout<<candidate1<<candidate2;

        for(auto i:nums){
            if(i==candidate1)
                counter1++;
            else if(i==candidate2)
                counter2++;
        }

        if(counter1 > (nums.size()/3)){
            ans.push_back(candidate1);
        }

        if(counter2>(nums.size()/3)){
            if(candidate1!=candidate2)
                ans.push_back(candidate2);
        }
        return ans;

    }
};