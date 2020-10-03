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

def move(board, index, value = "X")
   board[index] = value
end
def valid_move?(board, index)
	
	 if !position_taken?(board, index) && (index).between?(0, 8) && 
	   position_taken?(board, index) == false
    return true
	 
	else position_taken?(board, index) && !(index).between?(0, 8)
		return false
	end
end
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
   else board[index] == "X" || "O"
    return true
  end
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
   if valid_move?(board, index)
     move(board, index, value)
    
   else 
     puts "ask for input again until you get a valid input"
     input = gets.strip
     valid_move?(board, index)
   end
  
end
