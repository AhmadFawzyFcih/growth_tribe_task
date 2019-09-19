namespace :catch do
  desc "TODO"
  task tree: :environment do
    tree_structure = Api::External.get("https://random-tree.herokuapp.com")
    if(tree_structure[:status] == 200)
      File.open("public/tree.json","w") do |f|
        f.write(tree_structure[:data].to_json)
      end
    end
  end

end
