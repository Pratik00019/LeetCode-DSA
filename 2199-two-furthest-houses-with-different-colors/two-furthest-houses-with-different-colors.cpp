class Solution {
public:
    int maxDistance(vector<int>& colors) {
        int poi1 = 0;
        int poi2 = colors.size() - 1;
        int ans = 0;

        while (poi1 < poi2) {
            if (colors[poi1] != colors[poi2]) {
                ans = max(poi2 - poi1, ans);
                break;
            }
            poi2--;
        }
        poi2 = colors.size() - 1;
        while (poi1 < poi2) {
            if (colors[poi1] != colors[poi2]) {
                ans = max(poi2 - poi1, ans);
                break;
            }
            poi1++;
        }
        return ans;
    }
};