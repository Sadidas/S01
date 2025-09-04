use std::io;

fn verificar_senha(senha: &str) -> bool {

    let mut temBig = false;
    let mut temNum = false;

    if senha.len() < 8 {
        return false;
    }

    for caracteres in senha.chars(){
        if caracteres.is_digit(10){
            temNum = true;
        }
        if caracteres.is_ascii_uppercase(){
            temBig = true;
        }
    }

    if temBig && temNum{
        return true;
    }
    return false;
}

fn main(){

    loop{
        println!("Digite sua senha:");

        let mut entrada = String::new(); 

        io::stdin() 
            .read_line(&mut entrada) 
            .expect("Falha ao ler entrada");

        if verificar_senha(&entrada){
            break;
        }
        println!("Senha invalida!");
    }
    println!("Senha válida! Acesso concedido.");
}