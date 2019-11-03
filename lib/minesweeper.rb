# minesweeper
class Board

    def self.transform(board)
        @@board = board
        @@board.map! { |row| row.split('') }
        
        raise ArgumentError if @@board.map { |row| row.size != @@board[0].size }.include? true
        raise ArgumentError unless valid_all_borders?
        raise ArgumentError if invalid_char?
  
        row_nr = 0
        while row_nr < board.size - 1
            col_nr = 0
            while col_nr < board[0].size - 1
                col_nr += 1
                if board[row_nr][col_nr] == " " then count_mines(row_nr, col_nr)
                end
            end
            row_nr+=1
        end
        @@board.map{ |row| row.join }
    end

    def self.count_mines row, col
        sum = 0
        @@board[row - 1][col - 1] == '*' ? sum += 1 : sum
        @@board[row - 1][col] == '*' ? sum += 1 : sum
        @@board[row][col - 1] == '*' ? sum += 1 : sum
        @@board[row + 1][col - 1] == '*' ? sum += 1 : sum
        @@board[row + 1][col + 1] == '*' ? sum += 1 : sum
        @@board[row + 1][col] == '*' ? sum += 1 : sum
        @@board[row][col + 1] == '*' ? sum += 1 : sum
        @@board[row - 1][col + 1] == '*' ? sum += 1 : sum

        @@board[row][col] = sum.zero? ? ' ' : sum.to_s
    end

    def self.valid_all_borders? 
        up = !@@board[0].map{ |sign| ['|', '+', '-'].include? sign }.include?(false)
        down = !@@board[@@board.size - 1].map{ |sign| ['|', '+', '-'].include? sign }.include?(false)
        left = !@@board.transpose[0].map{ |sign| ['|', '+', '-'].include? sign }.include?(false)
        right = !@@board.transpose[@@board.transpose.size - 1].map{ |sign| ['|', '+', '-'].include? sign }.include?(false)
        up && down && left && right
    end

    def self.invalid_char?
        @@board.map{ |row| row.map { |sign| ['+', '-', '*', ' ', '|'].include? sign } }.join.include? 'false'
    end

end