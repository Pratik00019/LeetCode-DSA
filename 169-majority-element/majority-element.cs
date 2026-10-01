public class Solution {
    public int MajorityElement(int[] nums) {
        int candidate = 0;
        int balance = 0;

        foreach(int val in nums){
            if(balance==0){
                candidate = val;
            }
            if(candidate==val){
                balance++;
            }else{
                balance--;
            }
        }
        return candidate;
    }
}