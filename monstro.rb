# Class Monstro

class Monstro

    attr_accessor :nome, :energia, :ataque, :estaVivo

    def initialize
        @energia  = rand(15) + 6
        @estaVivo = true
    end

    def atacar(alvo)
        @ataque = rand(5)
        puts "O dano do monstro foi #{@ataque}"
        alvo.energia -= @ataque
    end

    def esta_vivo?
        true if @energia > 0
    end
end
