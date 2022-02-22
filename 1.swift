//위의 주석처리는 전부 탐색하는 브루트 포스
//
//밑에는 해쉬테이블 이용.

// class Solution {
//     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//         let n = nums.count
//         var an = [Int]()
//         for i in 0..<(n-1){
//             for j in i+1..<n{
//                 if nums[i] + nums[j] == target{
//                     return [i, j]
//                 }
//             }
//         }
//         return []
//     }
// }

class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        for i in 0..<nums.count{
            let com = target - nums[i]
            if dict.keys.contains(com) && dict[com] != i{
                return [i,dict[com]!]
            }
            else{
                dict[nums[i]] = i
            }
        }
        return []
    }
}
