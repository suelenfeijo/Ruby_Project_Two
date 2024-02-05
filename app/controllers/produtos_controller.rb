class ProdutosController < ApplicationController
    before_action :setProduto
    def index
        @produtos = Produto.all
    end

    def show
    end
    
    private
    def setProduto
        @produto = Produto.find(params[:id])
    end
end
