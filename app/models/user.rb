class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :credit_cards, dependent: :destroy
  after_commit :assign_customer_id

  def assign_customer_id
    customer = Stripe::Customer.create(email: email)
    self.customer_id = customer.id
  end
end
