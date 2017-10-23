require "rubygems"
require "highline/import"

classeLivros = Class.new do
  attr_reader :autor, :titulo, :cod

  define_method (:livro) do
    @autor = autor
    @titulo = titulo
    @cod = cod
  end
end

livro_classe = classeLivros.new

classeBiblioteca = Class.new  do
  attr_accessor :livros

  define_method (:adic_livro) do
    puts "adiciona livro"
  end

  define_method (:remove_livro) do
    puts "remove livro"
  end

  define_method (:retorna_livros) do
    puts "retorna livros"
  end

  define_method (:retorna_biblioteca) do
    puts "quantidade de livros na biblitoeca  1"
  end
end

classe_biblioteca = classeBiblioteca.new


begin
  puts
  loop do
    choose do |menu|
      menu.prompt = "O que deseja fazer? [1, 2, 3, 4, 5]"
      menu.choice(:Adicionar_Livro) {classe_biblioteca.adic_livro}
      menu.choice(:Remover_Livro) {classe_biblioteca.remove_livro}
      menu.choice(:Listar_Livros) {classe_biblioteca.retorna_livros}
      menu.choice(:Biblioteca_Tamanho) {classe_biblioteca.retorna_biblioteca}
      menu.choice(:Sair, "Sair do programa") { exit }
    end
  end
end