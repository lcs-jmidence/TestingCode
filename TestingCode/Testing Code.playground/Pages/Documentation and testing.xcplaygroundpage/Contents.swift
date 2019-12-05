/*:
 ## Documentation and Testing
 
 When you write functions and methods, you should document them to indicate the conditions under which they function.
 
 Why should code be documented? Code is:
 * read more often than it is written
 * often shared among a team
 
 Swift code is documented, in part, by using comments.
 
 If you use the special comment format `///` you'll get a bonus: Swift will automatically create and format documentation that you can access the way you do for internal types, by Option-clicking on the item.
 
 Try it with the `PiggyBank` type and its methods below.
 
 - callout(Exercise): The `/// - Note:` lines are currently empty. Add information to each that indicates their limitations.
 */
/// Represents a piggy bank that holds only pennies.
/// - Note:
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
    /// - Note:
    func deposit(pennies: UInt8) {
        self.pennies += pennies
    }
    
    /// Withdraws pennies from the bank.
    /// - Parameter pennies: the number of pennies to withdraw.
    /// - Note:
    func withdraw(pennies: UInt8) {
        self.pennies -= pennies
    }
}
/*:
 ### Testing
 
 When you test a function, you should choose a range of values—including some that extend beyond the limits that the function expects.
 
 What are the limits of the `deposit` and `withdraw` methods? Make some test cases below by creating instances of `PiggyBank` and calling the two methods with values that should produce valid results, as well as ones that should cause it to crash. Verify valid results by comparing the method call to the expected output as demonstrated. (You'll have to comment out the tests that crash your code in order to have them alongside other tests.)
 */
// Test a legal deposit amount
var bank1 = PiggyBank()
bank1.deposit(pennies: 100)
bank1.balance() == 100 // This should be true

// More test cases below...

//: [Previous](@previous)  |  page 4 of 7  |  [Next: Making Change](@next)
