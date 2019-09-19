class Api::Tree
    def self.get(id)
        tree_structure = Api::External.get("https://random-tree.herokuapp.com")
        tree_structure[:data].first[1] == id.to_i ? tree_structure[:data] : []
    end
end