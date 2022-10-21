class PolyTreeNode
    attr_reader :value, :parent

    attr_accessor :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent= (parent)
        @parent = parent
        parent.add_child(self)
    end

    def add_child(child)
        # parent
        # child.parent=(@parent)
        @children << child if !@children.include?(child)
    end

    def remove_child(child)

    end


end
