class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value, parent=nil, children=[])
        @value = value
        @parent = parent
        @children = children
    end

    def parent=(value)
        if @parent
            @parent.children.delete(self)
        end
        @parent = value
        if @parent && !value.children.include?(self)
            value.children << self
        end
    end
end
