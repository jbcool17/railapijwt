# == Schema Information
#
# Table name: standings
#
#  id             :integer          not null, primary key
#  games          :integer
#  wins           :integer
#  losses         :integer
#  losses_ot      :integer
#  points         :integer
#  points_pct     :integer
#  goals          :integer
#  opp_goals      :integer
#  srs            :integer
#  sos            :integer
#  points_pct_old :integer
#  ro_wins        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  team_name      :string
#

require 'rails_helper'

RSpec.describe Standing, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
