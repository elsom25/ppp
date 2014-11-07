# == Schema Information
#
# Table name: projects
#
#  created_at :datetime
#  ends_at    :date
#  id         :integer          not null, primary key
#  name       :string(255)
#  starts_at  :date
#  updated_at :datetime
#

class Project < ActiveRecord::Base
  validates_presence_of :name, :starts_at, :ends_at
  validate :ends_after_start?

protected

  def ends_after_start?
    return if [:starts_at, :ends_at].map(&:blank?).any?
    errors.add(:ends_at, 'must begin after the start date') if ends_at <= starts_at
  end
end
