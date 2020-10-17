import Foundation
var setN = Set<Int>()
var setM = Set<Int>()
if CommandLine.arguments.count == 1 
{
    guard let N1 = readLine() else 
    {
        exit(0)
    }
    guard var N = Int(N1) else { exit(0)}
    while (N>0)
    {
         guard let i1  = readLine() else
      {
        exit(0)
      }
      guard let i = Int(i1) else { exit(0)}
    setN.insert(i)
    N-=1
    } 
    guard let M1 = readLine() else 
    {
        exit(0)
    }
    guard var M = Int(M1) else { exit(0)}
    while (M>0)
    {
         guard let i1  = readLine() else
      {
        exit(0)
      }
      guard let i = Int(i1) else { exit(0)}
    setM.insert(i)
    M-=1
    } 
} 
else 
{
    guard let N = Int(CommandLine.arguments[1]) else {exit(0)}
    var k = 0
    while (k != N)
    {
      guard let value = Int(CommandLine.arguments[k+2]) else {exit(0)}
     setN.insert(value)
     k+=1
    }
    guard let M = Int(CommandLine.arguments[k+2]) else {exit(0)}
    while (k-N != M)
    {
      guard let value = Int(CommandLine.arguments[k+3]) else {exit(0)}
     setM.insert(value)
     k+=1
    }
}
Task5(setN:setN,setM:setM)
func Task5 (setN:Set<Int>,setM:Set<Int>)
{
    print(setN.intersection(setM).sorted())
}
