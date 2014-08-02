class ResetPassController < ApplicationController
    
  def sub
    @mail = Register.find_by_email(params[:email])
    
    if(!@mail.blank?)
    @mail.update_attribute(:pass, params[:pass])
     else
       return false
      
    end    
    end
end
