class ApplicationController < ActionController::API



  def get_current_user
      User.find_by(id: params[:id])
    end

    def secret
        ENV['MY_SUPER_SECRET']
    end

end
