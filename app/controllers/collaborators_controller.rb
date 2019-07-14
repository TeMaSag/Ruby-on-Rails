class CollaboratorsController < ApplicationController
        def index
            @collaborators = Collaborator.all
        end
        
        def show
            @collaborator = Collaborator.find(params[:id])
        end
        
        def new
            @collaborator = Collaborator.new
        end
        
        def edit
            @collaborator = Collaborator.find(params[:id])
        end
        
        def create
            @collaborator = Collaborator.new(collaborator_params)
            if @collaborator.save
            redirect_to @collaborator
            else
            render 'new'
            end
        end
        
        def update
            @collaborator = Collaborator.find(params[:id])        
            if @collaborator.update(collaborator_params)
            redirect_to @collaborator
            else
            render 'edit'
            end
        end
        
        def destroy
            @collaborator = Collaborator.find(params[:id])
            @collaborator.destroy
        
            redirect_to collaborators_path
        end
        
        private
            def collaborator_params
             params.require(:collaborator).permit( :library_id, :surname, :name, :patronymic, :birthday, :date_of_employment, :post, :education)
            end
end
