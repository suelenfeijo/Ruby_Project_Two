class ProdutosController < ApplicationController
    before_action :setProduto, only: [:show, :edit, :update, :destroy]
    def index
        @produtos = Produto.all
    end

    def show;end

    def new
        @produto = Produto.new
    end

    def create
        @produto = Produto.new(produto_params)
        #se o produto pôde ser salvo
        if @produto.save
            #redirecione para produto, e mostra o show
            redirect_to produtos_url    
        #se não
        else
            #me mostre dados de new e me dê um status de não processamento da entidade
            render :new, status: :unprocessable_entity
        end
    end

    def edit;end

    def update
        # se o produto pô ser atualizado através dos parâmetros (id) recebido na url
        if @produto.update(produto_params)
            #redirecione para o id do produto , e renderize o produto que foi editado
            redirect_to produtos_url(@produto) 
        #se não
        else
            #me mostre dados de new e me dê um status de não processamento da entidade
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
      if  @produto.destroy
        redirect_to produtos_url
      else
        redirect_to @produto
      end
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
