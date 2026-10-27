class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        int ans = 0;
        unordered_map<char,int> mpp;

        int left = 0;
        int right = 0;



        for(int i = 0;i<s.length();i++){
            if(mpp.count(s[i]) && mpp[s[i]]>=left){
                left = mpp[s[i]]+1;
            }
            mpp[s[i]]=i;
            ans = max(ans, i-left+1);
        }
        return ans;                
    }
};