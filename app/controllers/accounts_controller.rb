class AccountsController < ApplicationController
  def index
    @admins = Admin.find(:all)
  end
  
  def show
    @account = Account.find(params[:id])
  end
  
  def new
    @account = Account.new
    @account.contacts.build # build a blank user or the child form won't display
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      flash[:success] = "Account created"
      redirect_to @account
    else
      render 'new'
    end
  end

  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      flash[:notice] = "Successfully updated admin."
      redirect_to @admin
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    flash[:notice] = "Successfully destroyed admin."
    redirect_to admins_url
  end
end
