class Drink
  attr_reader :nome

  def initialize(nome, preco_base)
    @_nome = nome
    self.preco_base = preco_base
  end

  def preco_base
    @_preco_base
  end

  def preco_base=(valor)
    if valor > 0
      @_preco_base = valor
    else
      raise "O preço deve ser positivo!"
    end
  end

  def preco_final
    @_preco_base
  end

  def to_s
    "Drink: #{@_nome}, Preço base: $#{@_preco_base}"
  end
end

class DrinkLenda < Drink
  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @_anos_desde_criacao = anos_desde_criacao
  end

  def preco_final
    @_preco_base + (5 * @_anos_desde_criacao)
  end

  def to_s
    "Drink Lenda: #{@_nome}, Preço final: $#{preco_final} (#{@_anos_desde_criacao} anos)"
  end
end

print "Nome do drink: "
nome = gets.chomp
print "Preço base: "
preco = gets.chomp.to_f
print "Anos desde a criação: "
anos = gets.chomp.to_i

drink = DrinkLenda.new(nome, preco, anos)
puts drink.to_s
