class MessageController < ApplicationController
    
    before_action :authenticate_user!, only:[:message_board, :create]
    
    def contact_us
      @contact_us = Ecommerce.all
      @random_gadgets = Ecommerce.all.sample(4)
      @random_shoes = Shoe.all.sample(4)
    end
    
    def message_board
       @messages = Message.all
    end
    
    def create
       message = Message.new
       message.name = params[:new_name]
       message.email = params[:new_email]
       message.content = params[:new_content]
       
       if message.save
        flash[:message_board] = 'Thank you!! :) for your message. Your Message has been sent'
        redirect_to :back
       end
    end
    
    def destory
        message = Message.find(params[:id])
        message.destroy
        
        redirect_to '/message/message_board'
    end
    

end
