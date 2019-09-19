class TreesController < ApplicationController
    def show
        tree = Api::Tree.get(params[:id])
        render json: tree
    end

    def parent
        parent_ids = Api::Parent.get(params[:id], params[:node_id])
        render json: parent_ids      
    end

    def child
        child_ids = Api::Child.get(params[:id], params[:node_id])
        render json: child_ids        
    end
end
