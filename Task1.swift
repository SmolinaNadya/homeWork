
if CommandLine.arguments.count == 1 
{
   
guard let N1  = readLine() 
else 
{
   exit(0)
}
guard let N = Double(N1) else {exit(0)}

 guard let M1  = readLine() else
 {
        exit(0)       
 }
 guard let M = Double(N1) else {exit(0)}

guard let X1  = readLine() else
 {
        exit(0)
 }
 guard let X = Double(X1) else {exit(0)}

guard let Y1  = readLine() else
 {
        exit(0)
 }
 guard let Y = Double(Y1) else {exit(0)}
 print(Task1(N:N,M:M,X:X,Y:Y))
}
else 
{
    let N1 = CommandLine.arguments[1]
    let M1 = CommandLine.arguments[2]
    let X1 = CommandLine.arguments[3]
    let Y1 = CommandLine.arguments[4]
    guard let N = Double(N1) else {exit(0)}
    guard let M = Double(M1) else {exit(0)}
    guard let X = Double(X1) else {exit(0)}
    guard let Y = Double(Y1) else {exit(0)}
   print(Task1(N:N,M:M,X:X,Y:Y))
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



