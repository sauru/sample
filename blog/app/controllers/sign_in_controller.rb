class SignInController < ApplicationController
  
  def welcome
  #  user = Register.find_by_name(params[:name]) 
   # @pass = Register.find_by_sql(["SELECT pass as paa FROM Registers WHERE (name = ?)",params[:name]])
    @user = Register.find_by_name(params[:name]) 
  if (@user.name==params[:name] && @user.pass==params[:pass])
   # redirect_to(:action => 'welcome') 
    flash[:notice] = "Successfully signed in" 
    #flash[:notice] = @user
  # flash[:notice] = @pass['paa'].class.inspect
   
  else  
    flash[:notice] = "Invalid name or password"
   # puts params[:pass]
    #puts @pass
    #render "new"  
  end
  end 
  end
  
  