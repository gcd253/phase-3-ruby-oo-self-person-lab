require 'pry'

class Person

    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        if happiness > 10
            happiness = 10
        elsif happiness < 0
            happiness = 0
        end
        @happiness = happiness
    end

    def hygiene=(hygiene)
        if hygiene > 10
            hygiene = 10
        elsif hygiene < 0
            hygiene = 0
        end
        @hygiene = hygiene
    end

    def happy?
        if @happiness > 7
            true
        else false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else false
        end
    end

    def get_paid(cash)
        @bank_account = self.bank_account + cash
        "all about the benjamins"
    end

    def take_bath
        @hygiene = self.hygiene + 4
        self.hygiene=(hygiene)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        @hygiene = self.hygiene - 3
        self.hygiene=(hygiene)
        @happiness = self.happiness + 2
        self.happiness=(happiness) 
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        @happiness = self.happiness + 3
        self.happiness=(happiness) 
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(victim, topic)
        if topic == "politics"
            @happiness = self.happiness - 2
            self.happiness=(happiness) 
            victim.happiness = victim.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            @happiness = self.happiness + 1
            self.happiness=(happiness)
            victim.happiness = victim.happiness + 1
            'blah blah sun blah rain'
        else 'blah blah blah blah blah'
        end
    end

end