class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name,
                                 :email,
                                 :street_address,
                                 :city,
                                 :state,
                                 :zip_code,
                                 :housing_association_id.to_sym,
                                 :phone_number,
                                 :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation,
                                 :current_password)
  end
end
