class SecretHandshake
    def initialize(code)
      @code = code
      @instructions = ['wink', 'double blink', 'close your eyes', 'jump', nil]
    end
  
    def commands
      if @code.class != Integer || !@code.between?(1, 31) then return [] end
      @code = @code.to_s(2).split('')
                   .reverse.each_with_index
                   .map { |bit, i| bit.to_i.zero? ? nil : @instructions[i] }
      if @code.size == 5 then @code.reverse! end
      @code.reject! &:nil?
      @code
    end
  end