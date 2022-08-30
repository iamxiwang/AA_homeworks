class GraphNode
    attr_accessor :val, :neighbors
  
    def initialize(val)
        @val = val
        @neighbors = []
    end


    def neighbors=(arr)
        @neighbors = arr
        arr.each{|ele| ele.neighbors << self}
    end
  end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]