require 'pry'

# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(level)
        if level > 10
            @happiness = 10
        elsif level < 0
            @happiness = 0
        else
            @happiness = level
        end
    end

    def happy?
        @happiness > 7
    end

    def hygiene=(level)
        if level > 10
            @hygiene = 10
        elsif level < 0
            @hygiene = 0
        else
            @hygiene = level
        end
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        [self, friend].each { |person| person.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
            objects.each { |person| person.happiness -= 2 }
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            objects.each { |person| person.happiness += 1 }
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end