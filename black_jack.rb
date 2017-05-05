require 'pry'
puts "Welcome to Black Jack!"
##### bet loop
loop do

  @you_win = false
  @bust = false
  @tie = false
  @cards = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
  @hand = []
  @dealer_hand = []
  @money ||= 100
  @continue = ""

  puts "Press 'ctrl + c' if you want to quit."
  puts "You have $#{@money}. How much would you like to bet today?"
  @bet = gets.chomp.to_i

  case
    when @bet % 5 == 0
      if @bet > @money
        puts "You don't have enough money."
      elsif @bet <= @money
        @money = @money - @bet
        puts "Money left #{@money}"
        puts "Thank you sir. The round begins now."
      else
        puts "Incorrect input, please try again."
        break
      end
    else puts "Sorry, bets have to be increments of 5."
    break
  end

  2.times do
    @init = @cards.sample
    case @init
      when "A"
        print "Your current hand value is #{@hand.sum}"
        ace_val = gets.chomp.to_i
        if ace_val == 1 || ace_val == 11
          @hand << ace_val
        else
          puts "Please pick 1 or 11. No cheating!"
        end
      when "10", "J", "Q", "K"
        @hand << 10
      when "2", "3", "4", "5", "6", "7", "8", "9"
        @hand << @init.to_i
    end
  end

  p "Your hand values are #{@hand}"

  until @continue == "stand" || @hand.sum >= 21
    print "Hit or Stand?"
    @continue = gets.chomp.downcase
    if @continue == "hit"
      hit = @cards.sample
      puts hit
      case hit
        when "A"
          print "Your current hand value is #{@hand.sum}. Would you like 1 or 11?"
          @ace_val = gets.chomp.to_i
          if @ace_val == 11 || @ace_val == 1
            @hand << @ace_val
            puts "Your current hand value is #{@hand.sum}"
          else
            puts "Please pick 1 or 11. No cheating!"
          end
        when "10", "J", "Q", "K"
          @hand << 10
          puts "Your current hand value is #{@hand.sum}"
        when "2", "3", "4", "5", "6", "7", "8", "9"
          @hand << hit.to_i
          puts "Your current hand value is #{@hand.sum}"
      end
    elsif @continue == "stand"
      puts @hand.sum
    end
    if @hand.sum > 21
      puts "Bust! Your current hand value is #{@hand.sum}"
      @bust = true
    end
  end

  puts "The dealer's turn is..."

  until @dealer_hand.sum >= 17
    dealer = @cards.sample
    case dealer
      when "A"
        if @dealer_hand.sum + 11 <= 21
          @dealer_hand << 11
        else
          @dealer_hand << 1
        end
      when "10", "J", "Q", "K"
        @dealer_hand << 10
      when "2", "3", "4", "5", "6", "7", "8", "9"
        @dealer_hand << hit.to_i
    end
  end

  puts "The dealers hand sum is #{@dealer_hand.sum}"

  if @bust == true
    puts "You lost...better luck next time!"
  elsif @dealer_hand.sum > 21 && @hand.sum <= 21
    puts "YOU WIN!!!"
    @you_win = true
  elsif @dealer_hand.sum <= 21
    if @hand.sum == @dealer_hand.sum
      puts "You tie...That was a close one!"
      @tie = true
    elsif @hand.sum > @dealer_hand.sum && @hand.sum <= 21
      puts "YOU WIN!!!"
      @you_win = true
    end
  end
  
  ##### win statement
  if @you_win == true
    @money = @money + @bet * 2
    puts "Your remaining balance is #{@money}. Whoa! Rolling in the dough."
  elsif @tie == true
    @money = @money + @bet
    puts "Your remaining balance is #{@money}"
  else
    puts "You lost...better luck next time!"
    puts "Your remaining balance is #{@money}"
  end
  if @money == 0
    puts "Game over! You are out of money!"
    break
  end
end