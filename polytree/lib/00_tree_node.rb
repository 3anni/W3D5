
require 'byebug'

class PolyTreeNode
    attr_reader :value, :parent

    attr_accessor :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent= (new_parent)
        # remove child from current parent
        self.parent.children.delete(self) unless self.parent.nil?
        # set new parent
        @parent = new_parent
        # add child to new parent
        self.parent.children << self unless self.parent.nil?
    end

    def add_child(child)
        child.parent=(self) if !children.include?(child)
    end

    def remove_child(child)
        raise "not child " if child.parent == nil

        child.parent = nil if children.include?(child)
    end
end
