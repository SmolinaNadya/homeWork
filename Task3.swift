import Foundation
var array = [Int]()
if CommandLine.arguments.count == 1 
{
 guard var count  = Int(readLine()!) else
 {
        exit(0)
 }
 
 while count>0
 {
    guard let i  = Int(readLine()!) else
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
     array.append(Int(CommandLine.arguments[i+2])!)
     i+=1
    }

}
print(Task3(array:array))
func Task3(array:[Int]) -> [Int] 
{
    var duplicates = [Int]()
    for i in 0..<array.count
 {
     for j in i+1..<array.count
                {
                    if array[i] == array[j]
                     { var replay = false
                         for duplicate in duplicates
                       {
                        if array[i] == duplicate
                        {replay = true}
                       }
                       if(replay == false)
                       { duplicates.append(array[i]) }
                     }
                    
                }
 }
 return duplicates
}


