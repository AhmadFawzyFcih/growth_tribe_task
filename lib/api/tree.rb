class Api::Tree
    def self.get(id)
        file = File.read('public/tree.json')
        data = JSON.parse(file)
        data.first[1] == id.to_i ? data : []
    end
end