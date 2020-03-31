# Página Principal do RPG

require_relative 'heroi'
require_relative 'monstro'

system 'clear'

odin = Heroi.new
puts odin.inspect

while odin.esta_vivo?

    fishman = Monstro.new
    puts fishman.inspect

    while fishman.esta_vivo? && odin.esta_vivo?
        odin.atacar(fishman)
        puts "A energia de fishman é: #{fishman.energia}" if fishman.esta_vivo?

        if fishman.esta_vivo?
            fishman.atacar(odin)
            puts "Sua energia é: #{odin.energia}"
        else
            odin.qtd_mortos += 1
        end
    end

end

puts "Você está morto!!!!"
puts "Você matou #{odin.qtd_mortos} monstros"
