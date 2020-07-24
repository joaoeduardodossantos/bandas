class BandasController < ApplicationController

    before_action :busca_banda, only: [:edit, :update, :destroy]

    def index
        @todas_bandas = Banda.all.order(:nome).limit 10
        @todas_bandas_promocao = Banda.all.order(:preco).limit 2
    end

    def new
        @banda = Banda.new
        renderiza :new
    end

    def edit
        renderiza :edit    
    end

    def  update
         valores = banda_params
        if @banda.update valores
            flash[:notice] = "Banda atualizado com sucesso"
            redirect_to root_path
        else 
            renderiza :edit
        end
    end
        

    def create
        valores = banda_params
        @banda = Banda.new valores
        if @banda.save
            flash[:notice] = "Produto salvo com sucesso!"
            redirect_to bandas_path
        else
            renderiza :new
        end
    end

    def destroy
        @banda.destroy
        redirect_to root_path
    end

    def busca
        @nome = params[:nome]
        @banda = Banda.where "nome like ?", "%#{@nome}%"
    end

    private 
    def renderiza(view)
        @estilos = Estilo.all
        render view
    end

    def busca_banda
        id = params[:id]
        @banda = Banda.find(id)
    end

    def banda_params
        params.require(:banda)
            .permit(:nome, :descricao, :quantidade, :preco, :estilo_id, :id)
    end
   
end
