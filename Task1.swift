
import Foundation

if CommandLine.arguments.count == 1 
{
guard let N  = Double(readLine()!) else
 {
        exit(0)
 }
 guard let M  = Double(readLine()!) else
 {
        exit(0)       
 }

guard let X  = Double(readLine()!) else
 {
        exit(0)
 }

guard let Y  = Double(readLine()!) else
 {
        exit(0)
 }
 print(Task1(N:N,M:M,X:X,Y:Y))
}
else 
{
    let N = Double(CommandLine.arguments[1])
    let M = Double(CommandLine.arguments[2])
    let X = Double(CommandLine.arguments[3])
    let Y = Double(CommandLine.arguments[4])
    print(Task1(N:N!,M:M!,X:X!,Y:Y!))
}

func Task1(N:Double,M:Double,X:Double,Y:Double)->Double
{
 let newX = M - X
 let newY = N - Y
 if X<Y
 {
    if X<newX
    {
       if X<newY
        { return X}
       else
       { return newY}
    }
    else 
    
        if newX<newY
        { return newX}
       else
       { return newY} 
    
 }
else 
 {
    if Y<newY
  { 
     if Y<newX
  {return Y}
     else 
  {return newX}
  }
 
 else 
 
   if newX<newY
        { return newX}
    else
       { return newY} 
 }

}



