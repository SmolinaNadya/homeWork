import Foundation
if CommandLine.arguments.count == 1 
{
guard let V1  = readLine() else
 {
        exit(0)
 }
 guard let V = Int(V1) else {exit(0)}
 guard let T1  = readLine() else
 {
        exit(0)
 }
 guard let T = Int(T1) else {exit(0)}
 print(Task2(Speed:V,Time:T))
}
else 
{
    guard let V = Int(CommandLine.arguments[1]) else {exit(0)}
    guard let T = Int(CommandLine.arguments[2]) else {exit(0)}
    print(Task2(Speed:V,Time:T)) 
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
