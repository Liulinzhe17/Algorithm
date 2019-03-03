class Solution {
    class func fastSort(_ arr: inout[Int], l: Int, r: Int) {
        if l < r {
            var i = l
            var j = r
            var x = arr[l]
            while i < j {
                while i < j && arr[j] >= x { // 从右到左找小于基准数的索引
                    j -= 1
                }
                if i < j {
                    arr[i] = arr[j]
                    i += 1
                }
                
                while i < j && arr[i] < x { // 从左到右找大于基准数的索引
                    i += 1
                }
                if i < j {
                    arr[j] = arr[i]
                    j -= 1
                }
            }
            x = arr[i]
            fastSort(&arr, l: l, r: i - 1)
            fastSort(&arr, l: i + 1, r: r)
        }
    }
}

//Solution.fastSort(&[0,3,5,6,2,4], l: 0, r: 5)
