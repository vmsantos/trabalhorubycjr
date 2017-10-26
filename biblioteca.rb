class Livro
  attr_accessor :autor, :titulo, :cod
end

class Biblioteca
  attr_accessor :livros

  def initialize
    @livros = {}
  end
  
  def adiciona(livro)
    @livros[livro.cod] = livro
    puts
    puts "O título #{livro.titulo.chomp} foi adicionado"
    puts
  end
  
  def remove(cod)
    @livros.delete(cod)
    puts
    puts "O livro    foi removido"
  end
  
  def listar
    @livros.each_value do |livro|
      puts
      puts "código: #{livro.cod}"
      puts "título: #{livro.titulo}"
      puts "autor: #{livro.autor}"
      puts
    end
  end
  def quantidade
    puts
    puts "Quantidade de livros da biblioteca:"
    puts @livros.length
  end
end

classe_biblioteca = Biblioteca.new

sair = false

while sair != true
  puts "O que deseja fazer? [1, 2, 3, 4, 5]"
  puts "[1]adicionar livro"
  puts "[2]remover livro"
  puts "[3]mostrar todos os livros"
  puts "[4]mostrar quantidade de livros"
  puts "[5]sair do programa"
  
  opcao = gets.to_i
  
  if opcao == 1
    livro = Livro.new
    puts "Título do livro"
    livro.titulo = gets.to_s
    puts "Nome do autor"
    livro.autor = gets.to_s
    puts "Código do livro"
    livro.cod = gets.to_i
    classe_biblioteca.adiciona(livro)
    
  elsif opcao == 2
    puts "Digite o código do livro a ser removido"
    cod = gets.to_i
    classe_biblioteca.remove(cod)
    puts
  elsif opcao == 3
    puts "Esses são os livros da biblioteca3"
    classe_biblioteca.listar
    puts
  elsif opcao == 4
    classe_biblioteca.quantidade
    puts
  elsif opcao == 5
    sair = true
  end
end