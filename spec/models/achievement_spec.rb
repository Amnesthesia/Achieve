# == Schema Information
#
# Table name: achievements
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  full_description  :text
#  short_description :text
#  base_points       :decimal(, )
#  time_added        :datetime
#  expires           :datetime
#  img_path          :string(255)
#  is_global         :boolean
#  can_coop          :boolean
#  request_review    :boolean
#  has_parents       :boolean
#  user_id           :integer
#  user_type         :string(255)
#  location_id       :integer
#  location_type     :string(255)
#  type_id           :integer
#  type_type         :string(255)
#  mode_id           :integer
#  mode_type         :string(255)
#  category_id       :integer
#  category_type     :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'spec_helper'

describe Achievement do
  pending "add some examples to (or delete) #{__FILE__}"
end
