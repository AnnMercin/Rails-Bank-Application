class Account < ApplicationRecord
  belongs_to :user
  has_many :addresses

  before_create :generate_account_number
  before_create :set_default_balance

  private

  def generate_account_number
    self.account_number = SecureRandom.uuid
  end

  def set_default_balance
    self.balance ||= 0
  end
end
