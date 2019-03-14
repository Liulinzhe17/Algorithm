/*
 There are two sorted arrays nums1 and nums2 of size m and n respectively.
 
 Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 
 You may assume nums1 and nums2 cannot be both empty.
 
*/

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let length = nums2.count + nums1.count
        var sortArray = Array(repeating: 0, count: length)
        
        for i in 0..<nums1.count {
            sortArray[i] = nums1[i]
        }
        
        var index1 = 1
        var index2 = 1
        
        for j in 1...nums2.count {
            
            if index1 > nums1.count {
                
            }
            
            if nums1[nums1.count - index1] > nums2[nums2.count - index2] {
                sortArray[length - j] = nums1[nums1.count - index1]
                sortArray[nums1.count - index1] = nums2[nums2.count - index2]
                index1 += 1
            } else {
                sortArray[length - j] = nums2[nums2.count - index2]
                index2 += 1
            }
        }
    }
}
