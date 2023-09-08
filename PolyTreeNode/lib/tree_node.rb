class PolyTreeNode

attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(passed_node)
        #delete the relationship between parent and child if parent isn't nil
        self.parent.children.delete(self) if @parent != nil

        @parent = passed_node

        #if parent exists and if the child isn't already in the children array, then add yourself into the children
        if !@parent.nil? && !@parent.children.include?(self)
            @parent.children << self
        end
    end
  
    
end