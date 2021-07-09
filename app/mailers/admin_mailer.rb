class AdminMailer < ApplicationMailer
  default from: 'noreply@stockhome.com'
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    mail(to: 'admin@stockhome.com', subject: 'New User Awaiting Admin Approval')
  end
end
