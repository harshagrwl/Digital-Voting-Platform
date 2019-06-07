class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_detail, dependent: :destroy
  has_one :candidate, dependent: :destroy
  has_many :votes

  delegate *UserDetail::ATTR_METHODS, to: :user_detail
  delegate *Candidate::ATTR_METHODS, to: :candidate

  def is?(requested_role)
    return candidate_details if requested_role == 'candidate'
    return user_details if requested_role == 'user'
    return admin
  end
end
