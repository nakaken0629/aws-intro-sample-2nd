class UserMailer < ApplicationMailer
  default from: "no-reply@#{ENV['AWS_INTRO_SAMPLE_SMTP_DOMAIN']}"

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
