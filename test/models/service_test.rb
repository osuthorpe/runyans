# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             not null
#  image       :string           not null
#  order       :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  homepage    :boolean          default("false")
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
