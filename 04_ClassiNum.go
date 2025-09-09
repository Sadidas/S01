package main

import "fmt"

func classificar_numero(num int) string {

	if num > 0 {
		return "Positivo"
	} else if num < 0 {
		return "Negativo"
	} else {
		return "Zero"
	}
}

func main() {

	var numero int

    fmt.Println("Digite seu numero: ")
	fmt.Scanln(&numero)

	fmt.Println("O número", numero, " é: ", classificar_numero(numero))

}