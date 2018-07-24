require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do # test "the truth" do
    get root_path#   assert true
    assert_template 'static_pages/home'
    gem 'rails-controller-testing'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", static_pages_help_path
    assert_select "a[href=?]", static_pages_about_path
    assert_select "a[href=?]", static_pages_contact_path
    get static_pages_contact_path
    assert_select "title", full_title("Contact")
  end
end
