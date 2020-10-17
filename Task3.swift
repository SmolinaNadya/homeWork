import Foundation
var array = [Int]()
if CommandLine.arguments.count == 1 
{
 guard let count1 = readLine() else
  {
    exit(0)
  }
 guard var count  = Int(count1) else
 {
        exit(0)
 }
 
 while count>0
 {
    guard let i1  = readLine() else
  {
        exit(0)
  }
  guard let i = Int(i1) else
  {
        exit(0)
  }
    array.append(i)
    count-=1
 }
}
else 

{
    let count = Int(CommandLine.arguments[1])
    var i = 0
    while count != i
    {
      guard let value = Int(CommandLine.arguments[i+2]) else 
      {
        exit(0)
      }
     array.append(value)
     i+=1
    }

}
print(Task3(array:array))
func Task3(array:[Int]) -> [Int] 
{
    var duplicates = [Int]()
    for i in 0..<array.count
 {
   var replay = false
     for j in 0..<array.count
                {
                    if array[i] == array[j] && i != j
                     { replay = true }
                }
                if(replay == false)
                       { duplicates.append(array[i]) }
 }
 return duplicates
}


