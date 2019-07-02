class LibrariesController < ApplicationController
    def show
        @library = Library.find(params[:id])
    end

    def new
    end

    def create
        @library = Library.new(library_params)
      
        @library.save
        redirect_to @library
    end
      
    private
    def library_params
        params.require(:library).permit(:number, :name, :adress)
    end
    
end
