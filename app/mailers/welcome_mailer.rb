class WelcomeMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    mail to: user.email, subject: 'Welcome to StockHome', from: 'noreply@stockhome.com'
  end

  def approve_account(user)
    @user = user
    mail to: user.email, subject: 'Welcome to StockHome', from: 'noreply@stockhome.com'
  end

  def reject_account(user)
    @user = user
    mail to: user.email, subject: 'Welcome to StockHome', from: 'noreply@stockhome.com'
  end
end
