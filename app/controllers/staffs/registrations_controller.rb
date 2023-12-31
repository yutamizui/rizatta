# frozen_string_literal: true

class Staffs::RegistrationsController < Devise::RegistrationsController
  # include Accessible
  # skip_before_action :check_user, except: [:new, :create]
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @all_secret_codes = Branch.all.pluck(:secret_code)
    build_resource
    yield resource if block_given?
    respond_with resource
  end

  def create
    # ここでUser.new（と同等の操作）を行う
    @all_secret_codes = Branch.all.pluck(:secret_code)
    build_resource(sign_up_params)
    @branch = Branch.where(secret_code: params[:staff][:secret_code]).first
    resource.branch_id = @branch.id
    resource.company_id = Company.find(@branch.company_id).id

     if resource.save
        # ブロックが与えられたらresource(=User)を呼ぶ
        yield resource if block_given?
        if company_admin
          redirect_to staffs_path(branch_id: resource.branch_id)
        else
          sign_up(resource_name, resource)
          redirect_to reservations_path(branch_id: resource.branch_id)
        end
     elsif resource.persisted?

       # confirmable/lockableどちらかのactive_for_authentication?がtrueだったら
       if resource.active_for_authentication?
  
         set_flash_message! :notice, :signed_up
         # AdminActionMailer.new_registration_reminder(resource).deliver
         # UserActionMailer.user_registration_reminder(resource).deliver
  
         
         if current_company.present?
           companies_path
         else
           respond_with resource, location: after_sign_up_path_for(resource)
         end
  
       else
         set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
         expire_data_after_sign_in!
         respond_with resource, location: after_inactive_sign_up_path_for(resource)
       end
     else
       clean_up_passwords resource
       set_minimum_password_length
       respond_with resource
     end
   end
  

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end


  def after_update_path_for(resource)
    edit_school_registration_path(resource)
  end
end
