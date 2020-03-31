# Classe Heroi

class Heroi

    attr_accessor :energia, :ataque, :vivo, :qtd_mortos

    def initialize
        @energia    = 30
        @vivo       = true
        @qtd_mortos = 0
    end

    def atacar(alvo)
        @ataque = rand(5) + 3
        puts "O Heroi acertou o monstro, seu dano foi #{@ataque}"
        alvo.energia -= @ataque
    end

    def esta_vivo?
        true if @energia > 0
    end
end
