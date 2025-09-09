package main

import "fmt"

func verificarLogin(usuario, senha string) bool {

	if(usuario == "senha" && senha == "admin"){
		return true
	}
	return false

}

func main(){

	for {
		var usuario string

		fmt.Print("Digite seu usuario: ")
		fmt.Scanln(&usuario)

		var senha string

		fmt.Print("Digite seu senha: ")
		fmt.Scanln(&senha)

		if(verificarLogin(usuario, senha) == true){
			fmt.Println("Login bem sucedido!")
			break
		}else {
			fmt.Println("Usuario ou senha incorretos. Tente novamente")
		}
	}
}