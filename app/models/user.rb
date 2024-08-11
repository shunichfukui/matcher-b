# == Schema Information
#
# Table name: users
#
#  id   :bigint           not null, primary key
#  age  :integer          default(20), not null
#  name :string(255)      default(""), not null
#
class User < ApplicationRecord
end
