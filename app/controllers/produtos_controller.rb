class ProdutosController < ApplicationController
    before_action :setProduto, only: [:show]
    def index
        @produtos = Produto.all
    end

    def show
    end

    def new
        @produto = Produto.new
    end

    def create
        @produto = Produto.new(produto_params)
    end

    private
    def setProduto
        @produto = Produto.find(params[:id])
    end

    def produto_params
    #método que auxiliar a requerer , e conceder a permissão para que o
    #controller de create receba os campos de new produto e os salve no método post create
        params.require(:produto).permit(:name, :quantidade, :price)
    end
end
