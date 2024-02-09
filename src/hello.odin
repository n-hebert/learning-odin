package main
// c/o https://odin-lang.org/docs/overview/

import "core:fmt"

main :: proc() {
    fmt.println("Hellope!")
    /* Block comments

can
have

line
breaks */

     // You can't do this without handling the results.
     /* len("Foo") */
     /* len(some_string) */

     fmt.println(len("Foo")) // works!

     // Can't run this one because the name some_string is undeclared. Gotta keep reading the docs.
     /* some_string = `my raw string` */
     /* fmt.println(len(some_string)) */

     // Declaring is done with a colon. And it looks like I guessed that 'string' is the string type.
     some_string: string
     some_string = `my raw string`
     fmt.println(len(some_string))


     // consts don't need to be declare + assigned. Perhaps the string above could have been declare+assigned in 1 line, too
     x :: 5
     // println accepts variable arg lengths and args are separated with a space
     fmt.println("x is", x)
     // This fails on compile with "Cannot assign to 'x'"
     /* x = 7 */

     // let's try this. And also, it's type inferring.
     another_string := "Look I am declared and assigned in one statement"
     fmt.println("I guessed right since... ", another_string)

     // You can specify strict types, and then this crashes on getting an untyped integer instead of a string
     // Casting hasn't been covered yet
     /* odin: string = 1 */
}

