class People
    @@number_of_people = 0
    #com os dois @ a variavel se torna global dentro da classe/
    #OBS: não é muito utilizado;

    def self.rise
        #Com o self. se pode usar o metódo da classe sem instanciar a mesma;
        @@number_of_people += 1
        puts "Doing something first"
        People.new()
        
    end

    def self.number_of_people
        @@number_of_people
    end
end

people = People.rise
#self.rise apenas utilizando a classe

#people.rise() -- desse jeito não seria possível.

p People.number_of_people