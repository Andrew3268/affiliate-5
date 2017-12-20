class MessageController < ApplicationController
    
    before_action :authenticate_user!, only:[:message_board]
    
    def contact_us
       
    end
    
    def message_board
       @messages = Message.all
    end
    
    def create
       message = Message.new
       message.name = params[:new_name]
       message.email = params[:new_email]
       message.content = params[:new_content]
       message.save
       redirect_to '/message/contact_us'
    end
    
    def destory
        message = Message.find(params[:id])
        message.destroy
        
        redirect_to '/message/message_board'
    end
    

end
