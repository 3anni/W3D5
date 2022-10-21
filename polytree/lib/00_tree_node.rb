class PolyTreeNode
    attr_reader :value

    attr_accessor :children, :parent

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent= (parent)
        @parent = parent
        return nil if parent.nil?
        parent.add_child(self)
    end

    def add_child(child)
        # parent
        # child.parent=(@parent)
        @children << child if !@children.include?(child)
    end

    def remove_child(child)
        #pass nil to child's parent=
        #raise error if not child
        if child.parent == nil
            raise "not child "
        end
        child.parent = nil
        @children.delete(child)

    end


end
