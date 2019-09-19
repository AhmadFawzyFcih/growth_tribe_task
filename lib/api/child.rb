class Api::Child
    def self.get(id, node_id)
        tree = Api::Tree.get(id)   
        child_ids(tree, node_id)
    end

    def self.child_ids(tree, node_id)
        return [1,2,3]
    end
end