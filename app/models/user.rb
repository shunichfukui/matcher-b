# == Schema Information
#
# Table name: users
#
#  id     :bigint           not null, primary key
#  age    :integer          default(20), not null
#  name   :string(255)      default(""), not null
#  status :integer          default("normal"), not null
#
class User < ApplicationRecord

  enum status: {
    normal: 0,
    admin: 3,
    deleted: 10
  }
end
