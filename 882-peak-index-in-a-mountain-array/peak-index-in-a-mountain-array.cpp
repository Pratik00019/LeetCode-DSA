class Solution {
public:
    int peakIndexInMountainArray(vector<int>& arr) {
        int start =0; 
        int end = arr.size();
        int mid=0;
        while(start<end){
            mid = start + (end-start)/2;
            if(arr[mid]<arr[mid+1])
                start++;
            else
                end=mid;
        }
        return end;
    }
};