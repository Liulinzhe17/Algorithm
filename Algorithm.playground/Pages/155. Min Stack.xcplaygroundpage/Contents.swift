/*
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

push(x) -- Push element x onto stack.
pop() -- Removes the element on top of the stack.
top() -- Get the top element.
getMin() -- Retrieve the minimum element in the stack.
*/


class MinStack {
    
    var array = [Int]()
    var min = [Int]()
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        if array.isEmpty {
            min.append(x)
        }
        else if min.last! >= x {
            min.append(x)
        }
        array.append(x)
    }
    
    func pop() {
        let last = array.removeLast()
        if last == min.last! {
            min.removeLast()
        }
        
    }
    
    func top() -> Int {
        return array.last!
    }
    
    func getMin() -> Int {
        return min.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

