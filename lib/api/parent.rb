class Api::Parent
    def self.get(id, node_id)
        @ids = []
        tree = Api::Tree.get(id) 
        if (tree.length != 0)
            parent_ids(tree, node_id.to_i)        
        end
        return @ids
    end 
    
    def self.parent_ids(node, node_id)
        if(node["id"] == node_id)
            return true
        end
        node["child"].each do |child_node|
            if( parent_ids(child_node, node_id) == true )
                @ids.push(node["id"])
                return true
            end
        end
    end
end