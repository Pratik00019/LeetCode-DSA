class Solution {
public:
    string evaluate(string s, vector<vector<string>>& knowledge) {
        unordered_map<string,string> mpp;
        for(auto i:knowledge){
            mpp[i[0]] = i[1];
        }

        string ans="";
        string temp="";
        bool flag = 0;
        for(auto j : s){
            if(j=='('){
                temp="";
                flag=1;
            }
            else if(j==')'){
                cout<<temp<<endl;
                string tp = mpp.count(temp) > 0 ? mpp[temp]:"?";
                ans +=tp;
                flag=0;
            }
            if(!flag && j!=')'){
                ans+=j;
            }
            else if(j!='('){
                temp+=j;
            }

        }
        return ans;
    }
};