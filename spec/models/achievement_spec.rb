# == Schema Information
#
# Table name: achievements
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  full_description  :string(255)
#  short_description :string(255)
#  base_points       :integer
#  img_path          :string(255)
#  is_global         :boolean
#  can_coop          :boolean
#  request_review    :boolean
#  has_parents       :boolean
#  expires           :datetime
#  user_id           :integer
#  location_id       :integer
#  type_id           :integer
#  category_id       :integer
#  mode_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'spec_helper'

describe Achievement do
  before do
    @achievement = Achievement.new(title: "Development", full_description: ("Lots of text goes here"*5), short_description: "A summary comes here", base_points: 20, expires: nil, img_path: nil, is_global: true, can_coop: true, request_review: false, has_parents: false)
  end
  
  subject do
    @achievement
  end
  
  describe "test for short description length" do
    before do
      @achievement.short_description *= 15
    end
    it "should not be able to be this long" do
      should_not be_valid
    end  
  end
  
  describe "test for base_points presence" do
    before do
      @achievement.base_points = nil
    end
    it "should not be nil" do
      should_not be_valid
    end
  end
  
  describe "test for base points 0" do
    before do
      @achievement.base_points = 0
    end
    it "should not be 0" do
      should_not be_valid
    end
  end
  
  describe "base points as string" do
    before do
      @achievement.base_points = "Testing"
    end
    it "should not be valid" do
      should_not be_valid
    end
  end
end
