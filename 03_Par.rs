use std::io;

fn eh_par(numero: i32) -> bool{
    if numero % 2 == 0 {
        return true;
    }
    return false;

}

fn main(){
    
    let mut escolha = false;
    println!("Jogador 1 você acha que vai dar par ou impar:");

    let mut par = String::new(); 

    io::stdin() 
        .read_line(&mut par) 
        .expect("Falha ao ler entrada");
    
    if par.to_lowercase().trim() == "par" {
        escolha = true;
    }
    
    println!("{}", par.to_lowercase());
    println!("{}", escolha );
    println!("Jogaor 1, digite um numero:");

    let mut entrada = String::new();

    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler entrada");

    let numero1: i32 = entrada
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    println!("Jogador 2, digite seu numero:");

    let mut entrada = String::new();

    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler entrada");

    let numero2: i32 = entrada
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    let mut soma = numero1 + numero2;

    if escolha == eh_par(soma){
        println!("Jogador 1 venceu!!");
    } else {
        println!("Jogador 2 venceu!!");
    }
    
}