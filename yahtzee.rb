# ONES: score is the sum of those dice showing a one (could be zero.)
# TWOS: score is the sum of those dice showing a two (could be zero.)
# THREES: score is the sum of those dice showing a three (could be zero.)
# FOURS: score is the sum of those dice showing a four (could be zero.)
# FIVES: score is the sum of those dice showing a five (could be zero.)
# SIXES: score is the sum of those dice showing a six (could be zero.)
# THREE OF A KIND: if three of the dice show the same number, the score is the sum of all five dice; otherwise, zero.
# FOUR OF A KIND: if four of the dice show the same number, the score is the sum of all five dice; otherwise, zero.
# FULL HOUSE: if three of the dice show the same number as each other, and the other two show the same number as each other, score 25; otherwise, zero.1
# SMALL STRAIGHT: if there are four dice which show (1 2 3 4), or (2 3 4 5), or (3 4 5 6), score 30; otherwise, zero. (There is no defined order for the rolled dice, so order is not important.)
# LARGE STRAIGHT: if the five dice show (1 2 3 4 5), or (2 3 4 5 6), score 40; otherwise, zero. (Order is not important.)
# CHANCE: score the total of the five dice (minimum possible score is 5.)2
# YAHTZEE (FIVE OF A KIND:) if all five dice show the same number, score 50; otherwise, zero.


# Players will
# be able to choose to roll dice
# be able to choose which dice to keep
# be able to choose to roll again or not
# be able to choose what category to use for their score
# have a limit of 3 rolls

# Game will
# roll and print 5 values in an array
# store users choice of dice
# be able to continue up to 3 turns or stop if desired
# be able to place values in the correct place on the score card

require 'pry'
require 'text-table'

  @i = 0

  until @i >= 3
    def roll
      @rolled ||= [] 
      @arr = (1..6).to_a
      until @rolled.length == 5
        @rolled <<  @arr.sample
      end
      p @rolled 
      @rolled = []
    end

    def dice_selection
      print "What elements do you want to keep?"
      keep = gets.chomp.split(//)
        keep.each do |x|
         @rolled << x.to_i
       end
      print "If you want to end your turn type c, otherwise press enter!"
      term = gets.chomp
        if term == "c" 
          @i += 5
        end
    end
    roll
    dice_selection
    @i += 1
  end
   
  p @rolled


@total = []

puts "Where do you want to put your points? "


case gets.chomp.capitalize
  when "Aces"
    aces = @rolled.select { |x| x == 1}.inject(:+)
    @total << aces
  when "Twos"
    twos = @rolled.select { |x| x == 2}.inject(:+)
    @total << twos
  when "Threes"
    threes = @rolled.select { |x| x == 3}.inject(:+)
    @total << threes 
  when "Fours"
    fours = @rolled.select { |x| x == 4}.inject(:+)
    @total << fours
  when "Fives"
    fives = @rolled.select { |x| x == 5}.inject(:+)
    @total << fives 
  when "Sixes"
    sixes = @rolled.select { |x| x == 6}.inject(:+)
    @total << sixes
  when "3 of a kind"
    threeOfAKind = @rolled.inject(:+)
    @total << threeOfAKind
  when "4 of a kind"
    fourOfAKind = @rolled.inject(:+)
    @total << fourOfAKind
  when "Full house"
    full_house = 25
    @total << full_house
  when "Small straight"
    sm_straight = 30
    @total << sm_straight
  when "Large straight"
    lg_straight = 40
    @total << lg_straight
  when "Yahtzee"
    yahtzee = 50
    @total << yahtzee
  when "Chance"
    chance = @rolled.inject(:+)
    @total << chance
  when "Yahtzee bonus"
    yahtzee_bonus = 100
    @total << yahtzee_bonus
  end
  

@scorecard = [
  ['Category', 'Points'],
  ['Aces', aces],
  ['Twos', twos],
  ['Threes', threes],
  ['Fours', fours],
  ['Fives', fives],
  ['Sixes', sixes],
  ####['Bonus', bonus],
  ####['Upper Total', upper_total]
  :separator,
  ['3 of a Kind', threeOfAKind], 
  ['4 of a Kind', fourOfAKind],
  ['Full House', full_house], 
  ['Small Straight', sm_straight], 
  ['Large Straight', lg_straight], 
  ['Yahtzee', yahtzee], 
  ['Chance', chance],
  ['Yahtzee bonus', yahtzee_bonus],
  ['Grand Total', @total]
]

puts @scorecard.to_table(:first_row_is_head => true, :last_row_is_foot => true)




















