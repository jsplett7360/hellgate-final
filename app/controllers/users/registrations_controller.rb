class Users::RegistrationsController < Devise::RegistrationsController
  before_action :select_plan, only: :new
  
  # Extend default Devise gem behavior so that
  # users signing up with the Pro account (plan ID 2)
  # save with a special Stripe subscription function.
  # Otherwise Devise signs up user as usual.
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_subscription
        else
            if resource.plan_id == 3
              resource.save_with_subscription
              else
              if resource.plan_id == 4
                resource.save_with_subscription
                  else
                if resource.plan_id == 5
                  resource.save_with_subscription
                  else
                    resource.plan_id == 1
                    resource.save_with_subscription
                end
              end
            end
        end
      end
    end
  end
  
  private
    def select_plan
      unless (params[:plan] == '1' || params[:plan] == '2' || params[:plan] == '3' || params[:plan] == '4' || params[:plan] == '5')
        flash[:notice] = "Please select a show to sign up."
        redirect_to root_url
      end
    end
end