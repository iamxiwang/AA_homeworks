class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
      @cups.each_with_index do |arr, i|
        if i != 6 && i != 13
          @cups[i] = [:stone,:stone,:stone,:stone]
        end
      end
  end

  def valid_move?(start_pos)
    if start_pos == 0
      raise 'Starting cup is empty'
    end
    if start_pos < 1 || start_pos > 14
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
      pos_cup = @cups[start_pos]
      
      current_pos = start_pos
      while !pos_cup.empty?
        current_pos += 1
        ele =  pos_cup.pop
        if start_pos < 6 && current_pos == 13
          # dont place in oppont cup 13
          current_pos += 1
        elsif start_pos > 6 && current_pos == 6

          #dont place at cup 6
        end
        @cups[current_pos].push(ele)

     
      end
        

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
