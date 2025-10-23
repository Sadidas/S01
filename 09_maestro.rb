class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "Este método deve ser implementado nas subclasses!"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(peca)
    puts "#{@nome} está tocando '#{peca}' com um #{@instrumento}!"
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(peca)
    puts "#{@nome} está tocando '#{peca}' com um #{@instrumento}!"
  end
end

class Maestro
  def initialize(musicos)
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    puts "\n Iniciando ensaio da peça '#{peca}'\n\n"
    @musicos.each do |musico|
      musico.tocar_partitura(peca)
    end
  end

  def mudar_foco(estado)
    mensagens = @musicos.map do |musico|
      "#{musico.nome} agora está #{estado}!"
    end
    mensagens.each { |msg| puts msg }
  end
end

p1 = Pianista.new("Kousei")
v1 = Violinista.new("Kaori")

maestro = Maestro.new([p1, v1])

print "Digite o nome da peça para o ensaio: "
peca = gets.chomp

maestro.mudar_foco("concentrado")
maestro.iniciar_ensaio(peca)
