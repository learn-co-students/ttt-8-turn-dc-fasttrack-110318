def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  return index < 9 && index >= 0 && !position_taken?(board, index)
end

def move(board, index, token = "X")
    board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if !valid_move?(board, index)
    puts "Please try again"
    input = gets.strip
    index = input_to_index(input)
    else
      move(board, index, "X")
      puts "Please enter 1-9: #{display_board(board)}"
  end


end
