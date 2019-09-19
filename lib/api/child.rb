class Api::Child
    def self.get(id, node_id)
        @ids = []
        tree = Api::Tree.get(id)
        if (tree.length != 0)
            child_ids(tree, node_id.to_i)
        end
        return @ids
    end 
    
    def self.child_ids(node, node_id)   
        if(node["id"] == node_id)
            node["child"].each do |child_node|
                @ids.push(child_node["id"])
            end
            return true
        end
        node["child"].each do |child_node|
            child_ids(child_node, node_id)
        end
    end
end