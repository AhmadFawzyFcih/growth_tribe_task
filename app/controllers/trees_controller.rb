class TreesController < ApplicationController
    def show
        tree = Api::Tree.get(params[:id])
        render json: tree
    end

    def parent
        tree = Api::Parent.get(params[:id], params[:node_id])
        render json: tree      
    end

    def child
        tree = Api::Child.get(params[:id], params[:node_id])
        render json: tree        
    end
end
