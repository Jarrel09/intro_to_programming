require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnals
FIRST_MOVE = nil

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "   #{brd[1]} |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "   #{brd[4]} |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "   #{brd[7]} |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def joinor(arr, delimiter=', ', word='or')
  arr[-1] = "#{word} #{arr.last}" if arr.size > 1
  arr.join(delimiter)
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  square = find_move(brd, COMPUTER_MARKER, square)

  if !square
    square = find_move(brd, PLAYER_MARKER, square)
  end

  if !square && brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  elsif !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def find_move(board, marker, square)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, marker)
    break if square
  end
  square
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

scores = { computer: 0, player: 0 }

def keep_score(user, scores)
  increase_score(user, scores)
  declare_winner(user, scores)
  display_scores(scores)
end

def increase_score(user, scores)
  scores[user.downcase.to_sym] += 1
end

def display_scores(scores)
  prompt "Player: #{scores[:player]} Computer: #{scores[:computer]}"
end

def declare_winner(user, scores)
  if scores.value?(5)
    winner_message(user)
    reset_scores(scores)
  end
end

def winner_message(user)
  prompt "#{user} wins the game!"
  prompt "Game over"
end

def reset_scores(scores)
  scores[:player] = 0
  scores[:computer] == 0
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def places_piece!(brd, current_player)
  if current_player == 'computer'
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
  end
end

def alternate_player(current_player)
  current_player = if current_player == 'computer'
                     'player'
                   else
                     'computer'
                   end
end

loop do
  board = initialize_board

  current_player = 'player'

  loop do
    display_board(board)
    places_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    keep_score(detect_winner(board), scores)
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic-tac-toe! Goodbye."
