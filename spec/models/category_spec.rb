# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  category_id   :integer
#  category_type :string(255)
#  title         :string(255)
#  description   :text
#  img_path      :string(255)
#  points        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Category do
  pending "add some examples to (or delete) #{__FILE__}"
end
