package main

import "fmt"

func main (){

	var numero int

    fmt.Println("Digite seu numero: ")
	fmt.Scanln(&numero)

	var resto int = numero % 2

	switch resto {
	case 0:
			fmt.Println("O numero ", numero, " é par")
	default:
			fmt.Println("O numero ", numero, " é impar")
	}
}