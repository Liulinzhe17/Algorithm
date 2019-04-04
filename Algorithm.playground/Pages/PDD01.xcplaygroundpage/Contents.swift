import Foundation

while let line = readLine() {
    let parts = line.split(separator: " ")
    print(Int(parts[0])! + Int(parts[1])!)
    
}
