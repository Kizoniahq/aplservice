class OrderMailer < ApplicationMailer
  default :from => "support@apldeliveries.co"
  def order_email(user, order)
    @user = user
    @order = order
     mail(to: user.email, subject: 'Your order Has Been Created')
  end
end
