
class Bst
    attr_reader:data, :left, :right
    
    def initialize(data)
        @data=data
        @left=nil
        @right=nil
    end
    def insert(value)
        if(value<=data)
            if(@left!=nil)
                @left.insert(value)
            else
                @left=Bst.new(value)
            end

        else
            if(@right!=nil)
                @right.insert(value)
            else
                @right=Bst.new(value)
            end
        end
        
    end

    def each(&block)
        return enum_for(:each) unless block_given?
        @left.each(&block) if @left
        block.call(data)
        @right.each(&block) if @right
      end
    
    
end
