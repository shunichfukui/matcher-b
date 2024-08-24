# == Schema Information
#
# Table name: users
#
#  id     :bigint           not null, primary key
#  age    :integer          default(20), not null
#  email  :string(255)      default(""), not null
#  name   :string(255)      default(""), not null
#  status :integer          default("normal"), not null
#
FactoryBot.define do
  factory :user do
    
  end
end
