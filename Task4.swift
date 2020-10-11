import Foundation
if CommandLine.arguments.count == 1 
{
    guard let ipAdress = readLine(strippingNewline: true) else 
    {
        exit(0)
    }
    IP(ipAdress:ipAdress)
} 
else 
{
    let ipAdress = CommandLine.arguments[1] 
    IP(ipAdress:ipAdress)
}

 func IP(ipAdress:String)
  {
    var answer = "Yes"
    let array = ipAdress.components(separatedBy:".")
    print(array)
    if array.count != 4
    {
        answer = "No"
    }
    else
    {
      for i in array
      {
        let number = atoi(i)
        if number < 0 || number > 255
        {answer = "No"}
      }
    }
    print(answer)
  }

