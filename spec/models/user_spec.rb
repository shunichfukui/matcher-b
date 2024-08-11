# == Schema Information
#
# Table name: users
#
#  id   :bigint           not null, primary key
#  age  :integer          default(20), not null
#  name :string(255)      default(""), not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
