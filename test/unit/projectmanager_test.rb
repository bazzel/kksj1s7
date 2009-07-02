require 'test_helper'

class ProjectmanagerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Projectmanager.new.valid?
  end
end
