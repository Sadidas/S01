package main

import "fmt"

func fibonacci(n int){
	
	var fibonas1 int = 1
	var fibonas2 int = 0
	var fibonasFinal int

	fmt.Println("0")
	for i := 0; i < n; i++ {
	    fibonasFinal = fibonas1 + fibonas2
		fmt.Println(fibonasFinal)
		fibonas2 = fibonas1
		fibonas1 = fibonasFinal
	}
}

func main(){

	var numero int

    fmt.Println("Digite seu numero: ")
	fmt.Scanln(&numero)

	fibonacci(numero)
}