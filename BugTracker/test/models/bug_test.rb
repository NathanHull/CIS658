require 'test_helper'

class BugTest < ActiveSupport::TestCase
  def setup
      @bug = bugs(:one)
  end

  test "bug must be valid" do
      assert @bug.valid?
  end

  test "title must be present" do
      @bug.title = ""
      assert_not @bug.valid?
  end

  test "description must be present" do
      @bug.description = ""
      assert_not @bug.valid?
  end

  test "issue_type must be valid" do
      invalid_issue_types = [-10, -1, 3, 10]
      invalid_issue_types.each do |invalid|
          begin
              @bug.issue_type = invalid
              assert false, "#{invalid} should be invalid"
          rescue
              assert true
          end
      end
  end

  test "issue_type must be issue, enhancement, or feature" do
      valid_issue_types = [:issue, :enhancement, :feature]
      valid_issue_types.each do |valid|
          begin
              @bug.issue_type = valid
              assert true
          rescue
              assert false, "#{valid} should be valid"
          end
      end
  end

  test "priority must be valid" do
      invalid_priorities = [-10, -1, 3, 10]
      invalid_priorities.each do |invalid|
          begin
              @bug.priority = invalid
              assert false, "#{invalid} should be invalid"
          rescue
              assert true
          end
      end
  end

  test "priority must be low, medium, or high" do
      valid_priorities = [:low, :medium, :high]
      valid_priorities.each do |valid|
          begin
              @bug.priority = valid
              assert true
          rescue
              assert false, "#{valid} should be valid"
          end
      end
  end

  test "status must be valid" do
      invalid_statuses = [-10, -1, 3, 10]
      invalid_statuses.each do |invalid|
          begin
              @bug.status = invalid
              assert false, "#{invalid} should be invalid"
          rescue
              assert true
          end
      end
  end

  test "status must be open, closed, or monitor" do
      valid_statuses = [:open, :closed, :monitor]
      valid_statuses.each do |valid|
          begin
              @bug.status = valid
              assert true
          rescue
              assert false, "#{valid} should be valid"
          end
      end
  end
end
