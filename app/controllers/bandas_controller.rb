class BandasController < ApplicationController
    def index
        @todas_bandas = Banda.all.order(:nome).limit 20
        @todas_bandas_promocao = Banda.all.order(:preco).limit 2
    end
    
    def create
        valores = params.require(:banda)
            .permit(:nome, :descricao, :quantidade, :preco)
        banda = Banda.create valores
        redirect_to bandas_path
    end

    def destroy
        id = params[:id]
        Banda.destroy id
        redirect_to root_path
    end
end
