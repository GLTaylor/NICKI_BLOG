class LoginController < ApplicationController
  def new
    @site_user = SiteUser.new
  end

  def create
    site_user_params = params.require(:site_user)

    @site_user = SiteUser.new
      .tap { |su| su.username = site_user_params[:username] }
      .tap { |su| su.password = site_user_params[:password] }

    if @site_user.login_valid?
      login[:current_user] = true
      redirect_to posts_path
    else
      @site_user.password = nil
      flash[:notice] = 'Sorry, wrong credentils'
      render 'new'
    end
  end
end



