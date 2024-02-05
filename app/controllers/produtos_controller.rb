class ProdutosController < ApplicationController
    before_action :setProduto
    def index
        @produtos = Produto.all
    end

    def show
    end

    def setProduto
        @produto = Produto.find(params[:id])
    end
end
