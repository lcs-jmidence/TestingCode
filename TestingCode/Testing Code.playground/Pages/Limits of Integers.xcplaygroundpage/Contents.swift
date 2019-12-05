/*:
 ## Limits of Integers
 
 You may have noticed references to the `UInt8` type on the previous page, either in the autocompletion suggestions for methods, or in the error messages.
 
 Below is the code for `PiggyBank`.
 */
/// Represents a piggy bank that holds only pennies.
class PiggyBank {
    private var pennies: UInt8 = 0
    
    init() {
        pennies = 0
    }
    
    /// Returns the balance of the bank.
    func balance() -> UInt8 {
        return pennies
    }
    
    /// Deposits pennies into the bank.
    /// - Parameter pennies: the number of pennies to deposit.
    func deposit(pennies: UInt8) {
        self.pennies += pennies
    }
    
    /// Withdraws pennies from the bank.
    /// - Parameter pennies: the number of pennies to withdraw.
    func withdraw(pennies: UInt8) {
        self.pennies -= pennies
    }
}
/*:
 So what's a `UInt8`?
 
 All numbers in Swift occupy a fixed number of bits. The standard `Int` type occupies either 32 or 64 bits, depending on the computer it's running on. The `UInt8` type occupies only 8 bits.
 
 The "U" in `UInt8` stands for "unsigned." An unsigned integer is always positive. Piggy banks hold real pennies, so they shouldn't have the concept of negative balance.
 
 Since a piggy bank counts its pennies with `UInt8`, the number of pennies it can contain is limited by the capacity of an 8-bit number. Values of UInt8 range from 0–255.
 
 - callout(Experiment): Uncomment the line below to see an example of an illegal `UInt8` value.
 */
var bank = PiggyBank()
//bank.deposit(pennies: 500)
/*:
 The console should print "`Integer literal '500' overflows when stored into 'UInt8'.`"
 
 Overflow is the result of trying to store a number that won't fit into the number of bits available. Some languages allow overflow and silently "wrap" the value around to zero again. In Swift, overflow will always cause an error. That helps you design your code carefully and catch problems when you're testing it, rather than having a program that doesn't crash, but behaves strangely (and perhaps dangerously). It's rare to use types like `UInt8` in practice, because you typically want to work with numbers larger than 255. The limit of a 64-bit integer is more than 9 quintilliion, so it's very unlikely you'll encounter overflow in your programs, unless you're trying to count the number of stars in the Universe.
 
 Comment the line above back out again so that you can execute more code below.
 
 - callout(Experiment): Uncomment the lines below to see another example of overflow.
 */
//bank.deposit(pennies: 100)
//bank.deposit(pennies: 100)
//bank.deposit(pennies: 100)
/*:
 This time error in the console is much more inscrutable. Swift could detect the first error before executing your code by verifying that the integer literal, 500, was not a legal UInt8 value because 500 is greater than 255. But overflow can also occur as your program executes and you reach the bank's limitations. In that case, you'll see an "EXC_BAD_INSTRUCTION" error in the console. If you were debugging an app, the exact line of code that caused the overflow would be highlighted, so you'd quickly discover the issue.
 
 Comment the lines above back out again so that you can execute more code below.
 
 - callout(Experiment): Uncomment the lines below to see a final example of overflow.
 */
//bank.deposit(pennies: 50)
//bank.withdraw(pennies: 100)
/*:
 This time the overflow happened in the reverse direction—trying to assign a negative number to a `UInt8`.
 
 Next, document and test this code.

[Previous](@previous)  |  page 3 of 7  |  [Next: Documentation and Testing](@next)
 */
