class BandasController < ApplicationController
    def index
        @todas_bandas = Banda.all.order(:nome).limit 20
        @todas_bandas_promocao = Banda.all.order(:preco).limit 2
    end

    def new
        @banda = Banda.new
        @estilos = Estilo.all
    end
    
    def create
        valores = params.require(:banda)
            .permit(:nome, :descricao, :quantidade, :preco, :estilo_id, :id)
        @banda = Banda.new valores
        if @banda.save
            flash[:notice] = "Produto salvo com sucesso!"
            redirect_to bandas_path
        else
            render :new
        end
    end

    def destroy
        id = params[:id]
        Banda.destroy id
        redirect_to root_path
    end

    def busca
        @nome = params[:nome]
        @banda = Banda.where "nome like ?", "%#{@nome}%"
    end
end
