class UsersController < ApplicationController
  def index
    @admins = Admin.find(:all)
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    # @contact = current_contact
    @account = current_user.account_id
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "User created"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
    @account = Account.find_by_id(current_account)
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
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
