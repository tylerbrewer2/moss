class Api::AccountController < ApplicationController
  def create
    binding.pry
    account = Account.new(account_params)
    account.user_id = session[:user_id]
    if account.save
      render json: { account: { account_name: account.account_name, accountType: account.account_type }}, status: 200
    else
      render json: { message: 'There was a problem creating your account' }, status: 400
    end
  end

  private

  def account_params
    params.require(:account).permit(:account_name, :account_type)
  end
end
