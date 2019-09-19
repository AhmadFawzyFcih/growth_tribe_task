class Api::Parent

    def self.get(id, node_id)
        @res = []
        tree = Api::Tree.get(id) 
        parent_ids(tree, node_id.to_i)
        return @res
    end 
    
    def self.parent_ids(node, node_id)   
        if(node["id"] == node_id)
            return true
        end
        node["child"].each do |child|
            if( parent_ids(child, node_id) == true )
                @res.push(node["id"])             
                return true
            end
        end
    end

end