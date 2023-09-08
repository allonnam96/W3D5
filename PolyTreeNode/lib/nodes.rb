class node
    attr_reader :value, :children

    def initialize(value, children = [])
        @value = value
        @children = children
    end

    def inspect
        self.value
    end
end

#Tree Traversal Algorithems (Search)
#bfs - breadth-first search - uses a queue
    # 1. create a queue w/ root node inside
    # 2. until queue is empty:
        # a. dequeue the node
        # b. check the node, return the node if it matchese the target
        # c. add its children to the queue
    # 3. Return nil

# a. bfs ('f') target = 'f'
# 1. queue = [a,b,c,d,e,f,g]
# node = a
# node.value == target?

#dfs - depth-first search - uses a stack
    #1  check if the node is the target, return it if so.
    #2 iterate over node's children
        #a. call DFS on each child - memoize
        #b. if the result is not nil, return the node we found
    #3 return nil