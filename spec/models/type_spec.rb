# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  img_path    :string(255)
#  points      :integer
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Type do
  pending "add some examples to (or delete) #{__FILE__}"
end
