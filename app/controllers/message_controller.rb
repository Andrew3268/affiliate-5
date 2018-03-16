class MessageController < ApplicationController
    
    before_action :authenticate_user!, only:[:message_board, :create]
    
    def contact_us
      @contact_us = Ecommerce.all
      @sidebanner_01 = @contact_us.sample
      @sidebanner_02 = @contact_us.sample
      @sidebanner_03 = @contact_us.sample
      @sidebanner_04 = @contact_us.sample
      @sidebanner_05 = @contact_us.sample
      @sidebanner_06 = @contact_us.sample
      @sidebanner_07 = @contact_us.sample
      @sidebanner_08 = @contact_us.sample
      @sidebanner_09 = @contact_us.sample
      @sidebanner_10 = @contact_us.sample     
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
        flash[:message_board] = 'Thank you!! :) for your message. 
                                 Your Message has been sent'
        redirect_to '/message/contact_us'
       end
    end
    
    def destory
        message = Message.find(params[:id])
        message.destroy
        
        redirect_to '/message/message_board'
    end
    

end
