package main

var a = "G"

func main() {
   n()
   m()
   n()
   println()
}

func n() {
   print(a)
}

func m() {
   a = "O"
   println(a)
}
