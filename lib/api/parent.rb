class Api::Parent
    @res = []

    def self.get(id, node_id)
        tree = Api::Tree.get(id) 
        parent_ids(tree, node_id.to_i)
    end 
    
    def self.parent_ids(tree, node_id)   
        if(tree["id"] == node_id)
            return true
        else
            if(tree["child"].length != 0)
                tree["child"].each do |node|
                    if( parent_ids(node, node_id) == true )
                        @res.push(node["id"])                        
                        return true
                    end
                end
            end
        end
        return @res
    end

end