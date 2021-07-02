def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
        puts "Please enter 1-9:"
        player_input = gets.strip
        index = input_to_index(player_input)
        puts "\n"
        if !valid_move?(board, index)
            turn(board)
            return
        end
        move(board, index)
        display_board(board)
        puts "\n"
end

def input_to_index(player_input)
    player_input.to_i-1
end
  
def move(board, player_input, player = "X")
    board[player_input] = player
    return board
end

def valid_move?(board, player_input) 
    if player_input < 0 || player_input > 8
        return false  
    elsif board[player_input] == " " || board[player_input] == "" 
        return true
    else board[player_input] == "X" || board[player_input] == "O"
        return false
    end
end

