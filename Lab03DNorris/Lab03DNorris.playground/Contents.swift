import UIKit

// Integers will only display the whole number value.
var PiIntValue: Int? = nil
PiIntValue = 22 / 7

// Floats will display value with a decmial place up to 6 decimal places.
var PiFloatValue: Float? =  nil
PiFloatValue = 22 / 7

// Doubles are like Floats in that they both display the decimal place,
// however, Doubles are much more precise and with the decimal place.
var PiDoubleValue: Double? = nil
PiDoubleValue = 22 / 7


class Counter
{
    var count = 0
    
    func increment()
    {
        count += 1
    }
    
    func decrement()
    {
            count -= 1
    }
    
    func decrement(amount: Int)
    {
        for _ in 0...amount
        {
            decrement()
        }
    }
    
    // parameter with argument label and parameter name
    func increment(by amount: Int)
    {
        count += amount
    }
    
    func getCount() -> Int
    {
        return self.count
    }
    
    func display()
    {
        print ("Count: \(getCount())")
    }

    func reset()
    {
    count = 0
    }
}


func concatAll(names: [String]) -> String
{
    var nameCombined: String = ""
    
    for name in names
    {
        nameCombined = nameCombined + String(name) + ","
    }
        
    return String(nameCombined)
}
    
var names: [String] = ["James", "Jane", "Tom", "Sally"]
print (concatAll(names: names))

