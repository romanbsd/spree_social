class Spree::UserAuthentication < ActiveRecord::Base
  belongs_to :user
  validates :provider, uniqueness: { scope: :uid }
end
