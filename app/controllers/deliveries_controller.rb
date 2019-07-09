class DeliveriesController < ApplicationController
        def index
            @deliveries = Delivery.all
        end
        
        def show
            @delivery = Delivery.find(params[:id])
        end
        
        def new
            @delivery = Delivery.new
        end
        
        def edit
            @delivery = Delivery.find(params[:id])
        end
        
        def create
            @delivery = Delivery.new(delivery_params)
            
            # @delivery = Delivery.find(params[:article_id])
            @book = @delivery.books.create(comment_params)
            if @delivery.save
            redirect_to @delivery
            else
            render 'new'
            end
        end
        
        def update
            @delivery = Delivery.find(params[:id])
        
            if @delivery.update(delivery_params)
            redirect_to @delivery
            else
            render 'edit'
            end
        end
        
        def destroy
            @delivery = Delivery.find(params[:id])
            @delivery.destroy
        
            redirect_to deliveries_path
        end
        
        private
            def delivery_params
                params.require(:delivery).permit(:book_id, :subscriber_id, :date_delivery, :date_return)
            end
        
    end
