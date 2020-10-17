import Foundation
if CommandLine.arguments.count == 1 
{
    guard let ipAdress = readLine() else 
    {
        exit(0)
    }
    print(IP(ipAdress:ipAdress))
} 
else 
{
    let ipAdress = CommandLine.arguments[1] 
    print(IP(ipAdress:ipAdress))
}

 func IP(ipAdress:String)->String
  {
    let array = ipAdress.components(separatedBy:".")
    if array.count != 4
    {
        return "No"
    }
    else
    {
      for i in array
      {
        guard let number = Int(i) else 
        {
          return "No"
        }
        if number < 0 || number > 255
        {
          return "No"
        }
      }
    }
    return "Yes"
  }

