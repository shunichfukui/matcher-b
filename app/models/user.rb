# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  age             :integer          default(20), not null
#  email           :string(255)      default(""), not null
#  name            :string(255)      default(""), not null
#  password_digest :string(255)      default(""), not null
#  status          :integer          default("normal"), not null
#
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  enum status: {
    normal: 0,
    admin: 3,
    deleted: 10
  }
end
