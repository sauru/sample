class UserController < ApplicationController
 def new
   
   
 end
  def create
    @user = Register.new(:name=>params[:name],:email=>params[:email],:pass=>params[:pass])
  # user = Register.new(all_params)
    #user.save   
    if @user.save
      redirect_to "/new"
      flash[:notice] = "Signed up"
    else
     redirect_to "/new" 
      flash[:notice] = "something went wrong"
    
    end 
    end
    private
    def all_params
    #params.permit(:name, :email, :pass)
  end



   

end
