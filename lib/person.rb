

class Person
   attr_accessor :bank_account
   attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(happiness)
        @happiness=happiness       
        
        if @happiness<0
           @happiness=0
        end

        if @happiness > 10
            @happiness=10
        end  

    end
    
    
    def hygiene=(hygiene)
        @hygiene=hygiene  
        
        if @hygiene<0
            @hygiene=0
         end
         
         if @hygiene > 10
             @hygiene=10
         end  
 
    end
    
    
    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def happy?
        @happiness > 7 ? true : false
    end
    
    def clean?
        @hygiene > 7 ? true : false
    end
    
    def get_paid(num)
        @bank_account += num
        "all about the benjamins"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness =@happiness + 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(person)
        self.happiness +=3
        person.happiness += 3
        @happiness
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
      
    def start_conversation(person, topic)
        
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end 
    end
end
