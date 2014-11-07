require 'test_helper'

describe Project do
  subject { build :project }

  it 'should have a valid factory' do
    subject.must_be :valid?
  end

  describe '#create' do
    it 'should require valid date ranges' do
      project = build :project, starts_at: Date.today, ends_at: Date.today
      project.wont_be :valid?

      project = build :project, starts_at: Date.today, ends_at: (Date.today - 1)
      project.wont_be :valid?
    end
  end
end
