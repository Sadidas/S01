class MicroondasUnidade
  def aquecer_por(segundos)
    puts "Aquecendo por #{segundos} segundos..."
    sleep(1)
    puts "Microondas pronto!"
  end
end

class DMail
  attr_reader :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "D-Mail enviado às #{@hora_envio}: #{@conteudo}"
  end
end

class TelefoneDeMicroondas
  def initialize
    @unidade = MicroondasUnidade.new
    @d_mails = []
  end

  def enviar_dmail
    print "Digite o conteúdo do D-Mail: "
    conteudo = gets.chomp
    print "Digite a hora de envio (ex: 10:30): "
    hora_envio = gets.chomp

    @unidade.aquecer_por(3)

    dmail = DMail.new(conteudo, hora_envio)
    @d_mails << dmail

    puts "D-Mail enviado com sucesso!"
  end

  def listar_dmails(horario_corte)
    puts "\nD-Mails enviados após #{horario_corte}:"
    dmails_filtrados = @d_mails.select { |dmail| dmail.hora_envio > horario_corte }

    if dmails_filtrados.empty?
      puts "Nenhum D-Mail encontrado após esse horário."
    else
      dmails_filtrados.each { |dmail| puts dmail }
    end
  end
end

telefone = TelefoneDeMicroondas.new

loop do
  puts "\n=== MENU TELEFONE DE MICROONDAS ==="
  puts "1. Enviar D-Mail"
  puts "2. Listar D-Mails após um horário"
  puts "3. Sair"
  print "Escolha: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    telefone.enviar_dmail
  when 2
    print "Digite o horário de corte (ex: 10:00): "
    horario_corte = gets.chomp
    telefone.listar_dmails(horario_corte)
  when 3
    puts "Encerrando o Telefone de Microondas..."
    break
  else
    puts "Opção inválida!"
  end
end
