# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  city       :string(255)
#  region     :string(255)
#  state      :string(255)
#  country    :string(255)
#  zipcode    :string(255)
#  isCircular :boolean
#  x          :float
#  y          :float
#  z          :float
#  w          :float
#  radius     :float
#  time       :datetime
#  img_path   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Location do
  pending "add some examples to (or delete) #{__FILE__}"
end
