//
//  File.swift
//  algorithm
//
//  Created by Yongsoo Chang on 2022/02/21.
//
//짝수일땐 2로 나눠주고 아니면 1을 빼준다 두 경우 모두 스텝을 1씩 증가한다. while nu>0인동안.
class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var nu = num    //let인 num을 var로
        var cnt = 0
        while nu>0{
            if nu % 2 == 0 {       //2로 나눠 떨어지면
                nu = nu/2
            }
            else{
                nu = nu-1
            }
            cnt+=1  //step세주기
        }
        return cnt
    }
}
