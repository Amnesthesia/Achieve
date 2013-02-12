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

class Category < ActiveRecord::Base
  attr_accessible :category_id, :description, :img_path, :points, :title
  has_many :achievements
  belongs_to :category
  has_many :category
end
