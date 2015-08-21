class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_destroy :must_have_one_admin

  scope :admin, ->() { where(admin: true) }
  scope :regular, ->() { where(admin: false) }
  scope :active, ->() { where(active: true) }
  scope :inactive, ->() { where(active: false) }

  private

  def must_have_one_admin
    return false unless ::User.admin.count >= 1
  end
end
