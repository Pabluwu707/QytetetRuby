# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf­8

require_relative 'tipo_sorpresa'
require_relative 'sorpresa'
require_relative 'qytetet'

module ModeloQytetet
  class PruebaQytetet
    @juego
    
    def juego
      @juego
    end
    
    def PruebaQytetet.getMasQueCero()
      mazotemporal = Array.new
      mazo.each do |carta|
        if carta.valor > 0
          mazotemporal << carta
        end
      end
      return mazotemporal
    end
    
    def PruebaQytetet.getIrACasilla()
      mazotemporal = Array.new
      mazo.each do |carta|
        if carta.tipo == TipoSorpresa:IRACASILLA 
          mazotemporal << carta
        end
      end
      return mazotemporal
    end
    
    def PruebaQytetet.getSorpresa(tipo)
      mazotemporal = Array.new
      mazo.each do |carta|
        if carta.tipo == tipo 
          mazotemporal << carta
        end
      end
      return mazotemporal
    end
    
    def PruebaQytetet.main
      mazo = Array.new
      qytetet.inicializarCartasSorpresa()
      puts "Esto es una prueba tope mazo de chula" << "\n"
      
      puts "Carta con un valor mayor que cero: "
      puts getMasQueCero() << "\n"
      
      puts "Carta del tipo Ir a Casilla: "
      puts getIrACasilla() << "\n"
      
      puts "Carta del tipo que tu quieras: "
      puts getSorpresa(TipoSorpresa::PAGARCOBRAR) << "\n"
    end
    
  end
  
  PruebaQytetet.main
  
end