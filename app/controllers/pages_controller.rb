class PagesController < ApplicationController
  def index
    @product = Product.all
    Stripe.api_key = 'sk_test_Iqe0i5H2GrIZc1HxfHUbT73W00wiX7yoNV'
    session_object = Stripe::Checkout::Session.create({
      success_url: 'https://example.com/success',
      cancel_url: 'https://example.com/cancel',
      payment_method_types: ['card'],
      line_items: [
        {
          name: 'T-shirt',
          description: 'Comfortable cotton t-shirt',
          amount: 1500,
          quantity: 1,
          currency: 'inr'
        }]
    })


  end
end
