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

    private
    def setProduto
        @produto = Produto.find(params[:id])
    end
end
