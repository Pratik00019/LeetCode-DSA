class Solution {
public:
    int furthestDistanceFromOrigin(string moves) {
        int ans1 = 0;
        int ans2 = 0;
        for(auto i:moves){
            if(i=='L' || i == '_'){
                ans1-=1;
            }
            else{
                ans1+=1;
            }
            
            if(i=='R' || i == '_'){
                ans2+=1;
            }
            else{
                ans2-=1;
            }
        }
        return max(abs(ans1), abs(ans2));
    }
};