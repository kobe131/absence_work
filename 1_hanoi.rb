class Hanoi
  attr_reader :init
  def initialize
    @init = [[3,2,1],[],[]]
  end

  def play
    puts(render)
    until won?
      puts 'what tower you want to move from'
      fromtower = gets.to_i

      puts 'what tower you want to move to'
      totower = gets.to_i

      if valid_move?(fromtower,totower)
        move(fromtower,totower)
        puts(render)
      else
        puts(render)
        puts 'it is invalid move. do it again'
      end
    end
    puts 'You win'
  end

  def move(fromtower, totower)
    save = @init[fromtower].pop
    @init[totower].push(save)
  end

  def valid_move?(fromtower, totower)
    return false if !fromtower.between?(0,2) || !totower.between?(0,2)
    if !@init[fromtower].empty?
      return @init[totower].empty? || @init[fromtower].last < @init[totower].last
    end
    false
  end

  def render
    'Tower 0: '+@init[0].join(' ')+ "\n" +
    'Tower 1: '+@init[1].join(' ')+ "\n" +
    'Tower 2: '+@init[2].join(' ')+ "\n"
  end

  def won?
    @init[0].empty? && @init[1..2].any?(&:empty?)
  end

  if __FILE__ == $PROGRAM_NAME
    puts(__FILE__)
    Hanoi.new.play
  end

end
