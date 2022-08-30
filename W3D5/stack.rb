class Stack
    def initialize
        @trays = []
    end

    def push(el)
        @trays.push(el)
    end

    def pop
      @trays.pop
    end

    def peek
        @trays[-1]    
    end
end

class Queue
    def initialize
        @line = []
    end
    def enqueue(el)
        @line.push(el)
    end
    def dequeue
        @line.shift
    end
    def peek
        @line[0]
    end
end


class Map

    def initialize()
        @underlying = []
    end

    def set(key, value)
        if (0...@underlying.length).each do |i|
            if underlying[i].include[key]
                underlying[i][0] = value
            end
        end

        @underlying << [key, value]
    end

    def get(key) 
    end
    def delete(key)
    end 
    def show
    end


