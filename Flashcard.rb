require 'pry'
class FlashCard
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def question_and_answer(index)
    if @answer == ""
        return
    end         
    puts " #{index} #{@question}"
    input = ''
    while input != @answer
        input = gets.chomp
        if input != @answer
          puts "TRY AGAIN LOSER!"
        end
    end
    #puts @answer
    puts "You are correct, homie!"
  end
end

def display_cards(cards)
    cards.each_with_index do |card, index|
        card.question_and_answer(index+1)
    end
end



card0 = FlashCard.new("What does the array.each method do", "Iterates through each element in the array")
card01 = FlashCard.new("How much wood could a wood chuck chuck if a wood chuck could chuck wood", 42)
card1 = FlashCard.new("What does the array.each_with_index method do", "Iterate thru an array with the index")
card2 = FlashCard.new("What does the array.map method do", "Mapear")
card5 = FlashCard.new("What does the array.select method do", "Selectear")
card02 = FlashCard.new("What is my favorite food", "Whiskey")
card3 = FlashCard.new("What does the array.reduce method do", "Reducear")
card03 = FlashCard.new("Why is the sky blue", "Because, science.")

card_list = [card0, card01, card1, card02, card2, card3, card03, card5]

new_card_list = card_list.map do | card | 
    FlashCard.new(card.question + "?", card.answer)
end

filtered_card_list = new_card_list.select {|card| card.question.include? "array"}

# filtered_card_list.shuffle.each do |card| 
#   puts card.question
# end

display_cards(filtered_card_list.shuffle)