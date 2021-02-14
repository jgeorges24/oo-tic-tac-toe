class TicTacToe


    WIN_COMBINATIONS = [

        [0, 1, 2],
        [0, 3, 6],
        [0, 4, 8],
        [1, 4, 7],
        [2, 5, 8],
        [2, 4, 6],
        [3, 4, 5],  #second row
        [6, 7, 8]]

    def initialize(board = nil)
        @board = board || Array.new(9, " ")
    end

    def current_player
        turn_count % 2 == 0 ? "X" : "O"
    end

    def turn_count
        @board.count{|token| token == "X" || token == "O"}
    end

    def display_board
        puts " #{@board[0]}  |  #{@board[1]}  |  #{@board[2]} "
        puts "-----------"
        puts " #{@board[0]}  |  #{@board[1]}  |  #{@board[2]} "
        puts "-----------"
        puts " #{@board[0]}  |  #{@board[1]}  |  #{@board[2]} "
        
    end


    def input_to_index(string)
        @index
    end

    def move(index, player_token = "X")
        @board[index] = player_token
    end

    def turn 
        input = gets.chomp
        index = input_to_index(input)
        if valid_move?(index)
            token = current_player
            move(index, token)
            display_board
        else
            turn
        end
    

        def won?
            x_counter = 0
            o_counter = 0
            if WIN_COMBINATIONS.each do |combo|
                combo.each do |index|
                    if @board[index] == "X"
                        x_counter += 1
                    elsif @board[index] == "O"
                        o_counter += 1
                    end
                end
                if x_counter == 3 || o_counter == 3
                    return combo
                else 
                    x_counter = 0 && o_counter = 0
                     
                end
            false
                
            end
            
       
            
        



        def full?
            @board.all? {|full| full != " "}
        end


        def draw?
            if ffull? && !won?
                true
            end
        end

    
        def over?
            if full? && !won? || won?
                return true
            end
                return false
        end




        def winner
            if won? != false
                @board[won?[0]]
            else
                nil
            end
        end




        
        # def play
        #     while over? == false
        #         turn
            
            
        #     else won? != false
        #         puts "Congratulations #{winner}!"

        #     elsif draw?
        #         puts "Cat's Game!"
                
        #     end

        #     if draw? == true
        #         over?
        #     end
        # end

    end
        
        # def play
        #     if over? == false
        #         turn
        #     end
            
        #     if won? == true
        #         over?
        #     end

        #     if draw? == true
        #         over?
        #     end
        # end


    end
end
end
