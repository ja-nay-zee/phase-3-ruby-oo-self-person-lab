class Person
   attr_accessor :bank_account
   attr_reader :name, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene =8
    end

    def happiness=(num)
        @happiness = if num > 10
                       10
                    elsif num < 0 
                       0
                    else 
                       num
                    end
    end

    def happy?
        self.happiness > 7
    end

   def hygiene=(num)
     @hygiene = if num > 10
                  10
                elsif num < 0
                  0
                else 
                  num
                end
   end


   def clean?
    self.hygiene > 7
   end


   def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
   end 
  
   def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
   end


   def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
   end 

   def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
   end 

   def start_conversation(friend, topic)
    case topic
    when "politics"
        [self, friend].each { |person| person.happiness -= 2}
        "blah blah partisan blah lobbyist"
    when "weather"
        [self, friend].each { |person| person.happiness += 1}
         "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
   end




end






# Person
#   initialization and attributes
#     .new
#       a new person is instantiated with a name (FAILED - 1)
#     #name
#       returns the name the person was initialized with (FAILED - 2)
#     #name=
#       a new person instance cannot overwrite the name they were instantiated with (FAILED - 3)
#     #bank_account
#       a new person instance is initialized with a bank_account balance of $25 (FAILED - 4)
#     #bank_account=
#       allows a person to change their bank account amount (FAILED - 5)
#     #happiness
#       a new person instance is initialized with a happiness of 8 (FAILED - 6)
#     #happiness=
#       allows a person to change their happiness (FAILED - 7)
#       does not allow a person to change their happiness above 10 (FAILED - 8)
#       does not allow a person to change their happiness below 0 (FAILED - 9)
#     #hygiene
#       a new person instance is initialized with a hygiene of 8 (FAILED - 10)
#     #hygiene=
#       allows a person to change their hygiene (FAILED - 11)
#       does not allow a person to change their hygiene above 10 (FAILED - 12)
#       does not allow a person to change their hygiene below 0 (FAILED - 13)
