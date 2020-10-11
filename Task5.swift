import Foundation
var setN = Set<Int>()
var setM = Set<Int>()
if CommandLine.arguments.count == 1 
{
    guard var N = Int(readLine()!) else 
    {
        exit(0)
    }
    while (N>0)
    {
         guard let i  = Int(readLine()!) else
      {
        exit(0)
      }
    setN.insert(i)
    N-=1
    } 
    guard var M = Int(readLine()!) else 
    {
        exit(0)
    }
    while (M>0)
    {
         guard let i  = Int(readLine()!) else
      {
        exit(0)
      }
    setM.insert(i)
    M-=1
    } 
} 
else 
{
    let N = Int(CommandLine.arguments[1])!
    var k = 0
    while (k != N)
    {
     setN.insert(Int(CommandLine.arguments[k+2])!)
     k+=1
    }
    let M = Int(CommandLine.arguments[k+2])!
    while (k-N != M)
    {
     setM.insert(Int(CommandLine.arguments[k+3])!)
     k+=1
    }
}
Task5(setN:setN,setM:setM)
func Task5 (setN:Set<Int>,setM:Set<Int>)
{
    print(setN.intersection(setM).sorted())
}
