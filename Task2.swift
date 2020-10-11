import Foundation
if CommandLine.arguments.count == 1 
{
guard let V  = Int(readLine()!) else
 {
        exit(0)
 }
 guard let T  = Int(readLine()!) else
 {
        exit(0)       
 }
 print(Task2(Speed:V,Time:T))
}
else 
{
    let V = Int(CommandLine.arguments[1])
    let T = Int(CommandLine.arguments[2])
    print(Task2(Speed:V!,Time:T!)) 
}
 func Task2(Speed:Int,Time:Int) -> Int 
 {
     let length = 109
     var S = Speed*Time
     if(Speed>0)
     {S = S % length}
     else
     {
         S = (length + S)%length
         if(S<0)
         {
             S+=length
         }
     }
     return S
 }