# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def happiness=(new_happiness)
      if new_happiness.between?(0, 10)
        @happiness = new_happiness
      elsif new_happiness < 0
        @happiness = 0
      else
        @happiness = 10
      end
    end
    
    def hygiene=(new_hygiene)
      if new_hygiene.between?(0, 10)
        @hygiene = new_hygiene
      elsif new_hygiene < 0
        @hygiene = 0
      else
        @hygiene = 10
      end
    end
  
    def happy?
      happiness > 7
    end
  
    def clean?
      hygiene > 7
    end
  
    def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
  
      if self.hygiene > 10
        self.hygiene = 10
      end
  
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.hygiene -= 3
  
      if self.hygiene < 0
        self.hygiene = 0
      end
  
      self.happiness += 2
  
      if self.happiness > 10
        self.happiness = 10
      end
  
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      self.happiness += 3
  
      if self.happiness > 10
        self.happiness = 10
      end
  
      friend.happiness += 3
  
      if friend.happiness > 10
        friend.happiness = 10
      end
  
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(person, topic)
      case topic
      when "politics"
        self.happiness -= 2
        person.happiness -= 2
        self.happiness = 0 if self.happiness < 0
        person.happiness = 0 if person.happiness < 0
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        person.happiness += 1
        self.happiness = 10 if self.happiness > 10
        person.happiness = 10 if person.happiness > 10
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  end