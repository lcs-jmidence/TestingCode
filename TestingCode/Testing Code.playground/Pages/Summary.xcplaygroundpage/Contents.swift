/*:
 ## Summary
 
 In many circumstances, programmers can use limited types like `Int` and `Double` without consequences to handle things like the number of messages in an email inbox, the number of friends in a social network, the airspeed of a plane, or the probability of an election result. But you won't be able to use even an `Int64` to represent the estimated number of stars in the universe.
 
 `Int` and `Double` are good examples of abstraction because they allow programmers to work with numbers without understanding how they're stored. But the abstraction isn't perfect (a computer scientist might call it a *leaky abstraction* because some of the internal details can leak out in some circumstances). If you do run into these limitations, your code will fail to work—and probably crash.
 
 Testing your code is one way to uncover these kinds of problems. More generally, testing is important for verifying all your code. When you write a function, you should also write tests that help you verify that it works the way you expect.
 
 _Copyright © 2019 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 7 of 7
 */