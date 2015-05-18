class User < ActiveRecord::Base
  attr_accessible :email; :password, :password_confirmation

  attr_accessor : password
  before_save :encrypt_password
end
