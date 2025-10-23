module Rastreavel
  def obter_localizacao(hora)
    puts "#{@nome} foi visto em #{@localizacao} às #{hora}."
  end
end

module Perigoso
  def calcular_risco
    rand(1..10) > 6
  end
end

class Participante
  attr_reader :nome, :localizacao

  def initialize(nome, localizacao)
    @nome = nome
    @localizacao = localizacao
  end
end

class Detetive < Participante
  include Rastreavel

  def to_s
    "Detetive #{@nome} (#{@localizacao})"
  end
end

class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso

  def to_s
    "Criminoso #{@nome} (#{@localizacao})"
  end
end

class Cenario
  def initialize
    @participantes = []
  end

  def adicionar(participante)
    @participantes << participante
  end

  def identificar_ameacas
    @participantes.select { |p| p.respond_to?(:calcular_risco) && p.calcular_risco }
  end

  def listar_participantes
    puts "\nParticipantes do cenário:"
    @participantes.each { |p| puts "- #{p}" }
  end
end

puts "=== O Jogo das Sombras ==="

print "Localização de Sherlock: "
loc_sherlock = gets.chomp
print "Localização de Moriarty: "
loc_moriarty = gets.chomp

sherlock = Detetive.new("Sherlock Holmes", loc_sherlock)
moriarty = MestreDoCrime.new("Moriarty", loc_moriarty)

cenario = Cenario.new
cenario.adicionar(sherlock)
cenario.adicionar(moriarty)

cenario.listar_participantes

puts "\n=== Rastreamento ==="
sherlock.obter_localizacao("10:00")
moriarty.obter_localizacao("10:05")

puts "\n=== Identificação de Ameaças ==="
ameacas = cenario.identificar_ameacas
if ameacas.empty?
  puts "Nenhuma ameaça detectada!"
else
  ameacas.each { |a| puts "Alvo perigoso identificado: #{a.nome}!" }
end
