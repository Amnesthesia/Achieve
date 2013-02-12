# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  password   :string(255)
#  age        :integer
#  gender     :integer
#  city       :string(255)
#  country    :string(255)
#  zipcode    :string(255)
#  img_path   :string(255)
#  role_id    :integer
#  role_type  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
