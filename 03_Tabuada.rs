use std::io;

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32) {
    let mut tabuado;
    for i in limite_inferior..=limite_superior {
        tabuado = numero * i;
        println!("{} x {} = {}", numero, i, tabuado);
    }
}

fn main(){

    println!("Digite o numero da tabuada:");

    let mut entrada = String::new();

    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler entrada");

    let numerotabu: i32 = entrada
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    println!("Digite o limite inferior:");

    entrada = String::new();

    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler entrada");

    let numeroinf: i32 = entrada
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    println!("Digite o limite superior:");

    entrada = String::new();

    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler entrada");

    let numerosup: i32 = entrada
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    imprimir_tabuada(numerotabu, numeroinf, numerosup);
}