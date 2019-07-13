class SubscribersController < ApplicationController
        def index
            @subscribers = Subscriber.all
        end
        
        def show
            @subscriber = Subscriber.find(params[:id])
        end
        
        def new
            @libraries = Library.all
            @subscriber = Subscriber.new
        end
        
        def edit
            @libraries = Library.all
            @subscriber = Subscriber.find(params[:id])
        end
        
        def create
            @libraries = Library.all
            @subscriber = Subscriber.new(subscriber_params)
            if @subscriber.save
            redirect_to @subscriber
            else
            render 'new'
            end
        end
        
        def update
            @subscriber = Subscriber.find(params[:id])        
            if @subscriber.update(subscriber_params)
            redirect_to @subscriber
            else
            render 'edit'
            end
        end
        
        def destroy
            @subscriber = Subscriber.find(params[:id])
            @subscriber.destroy
        
            redirect_to subscribers_path
        end
        
        private
            def subscriber_params
             params.require(:subscriber).permit( :library_id, :ticket_number, :surname, :name, :patronymic, :adress, :phone)
            end
end
