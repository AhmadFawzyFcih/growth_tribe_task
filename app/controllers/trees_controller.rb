class TreesController < ApplicationController
    def show
        tree = Api::Tree.get(params[:id])
        render json: tree
    end

    def parent
        parent_ids = Api::Parent.get(params[:id], params[:node_id])
        render json: {parent_ids: parent_ids}      
    end

    def child
        child_ids = Api::Child.get(params[:id], params[:node_id])
        render json: {child_ids: child_ids}         
    end

    def catch_structure
        tree_structure = Api::External.get("https://random-tree.herokuapp.com")
        if(tree_structure[:status] == 200)
          File.open("public/tree.json","w") do |f|
            f.write(tree_structure[:data].to_json)
          end
        end 
        render json: {tree: "updated"}
    end
end
