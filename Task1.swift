
import Foundation

if CommandLine.arguments.count == 1 
{
   
guard let V  = readLine() else {exit(0)}
 guard let N = Double(V) else {exit(0)}

 guard let M  = readLine() else
 {
        exit(0)       
 }

guard let X  = readLine() else
 {
        exit(0)
 }

guard let Y  = readLine() else
 {
        exit(0)
 }
 print(Task1(N:N,M:Double(M),X:Double(X),Y:Double(Y)))
}
else 
{
    let N = Double(CommandLine.arguments[1])
    let M = Double(CommandLine.arguments[2])
    let X = Double(CommandLine.arguments[3])
    let Y = Double(CommandLine.arguments[4])
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



