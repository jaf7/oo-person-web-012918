require 'pry'
class Person
 attr_accessor :bank_account
 attr_reader :happiness, :hygiene

 def initialize(name)
   @NAME = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end

 def name
   @NAME
 end

 def happiness= (input)
   #binding.pry
   if input > 10
     @happiness = 10
   elsif input < 0
     #binding.pry
     @happiness = 0
   else
     @happiness = input
   end

 end

 def hygiene= (input)
   if input > 10
     @hygiene = 10
   elsif input < 0
     @hygiene = 0
   else
     @hygiene = input
   end

 end

 def happy?
   @happiness > 7
 end

 def clean?
   @hygiene > 7
 end

 def get_paid(salary)
   @bank_account += salary
   "all about the benjamins"
 end

 def take_bath
   #binding.pry
   self.hygiene=(@hygiene + 4)
   "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
   self.happiness=(@happiness + 2)
   self.hygiene=(@hygiene - 3)
   "♪ another one bites the dust ♫"
 end

 def call_friend(friend)
   self.happiness=(@happiness + 3)
   friend.happiness += 3
   "Hi #{friend.name}! It's #{self.name}. How are you?"
 end

 def start_conversation(friend, topic)
   if topic == "politics"
     self.happiness=(@happiness - 2)
     friend.happiness -= 2
     "blah blah partisan blah lobbyist"
   elsif topic == "weather"
     self.happiness=(@happiness + 1)
     friend.happiness += 1
     "blah blah sun blah rain"
   else
     "blah blah blah blah blah"
   end
 end
end
