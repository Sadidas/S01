use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {

    let mut media;

    media = nota1 * 2.0 + nota2 * 3.0 + nota3 * 5.0;

    media = media/(2.0+3.0+5.0);

    return media;
}

fn main(){

    let nota1 = 7.5;
    let nota2 = 8.0;
    let nota3 = 9.2;

    let resultado = calcular_media(nota1, nota2, nota3);

    println!("Resultado da sua média: {}", resultado);

    if resultado >= 7.0 {
        println!("Você foi APROVADO!");
    }else {
        println!("Você foi REPROVADO!");
    }

}