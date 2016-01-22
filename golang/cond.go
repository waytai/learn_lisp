package main
import "fmt"
func main() {
    var first int = 10
    //var cond int
		
    if first <= 0 {
            fmt.Printf("first is less than or equal to 0\n")
        } else if first > 1 && first < 10 {
            fmt.Printf("first is less than 10\n")
        } else {
            fmt.Printf("first is greater than 10\n")
        }
}
