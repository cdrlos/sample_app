require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test 'layout links' do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    # assert_select "div"
    # assert_select "div", "foobar"
    # assert_select "div.nav"
    # assert_select "div#profile"
    # assert_select "div[name=yo]"
    # assert_select "a[href=?]", '/', count: 1
    # assert_select "a[href=?]", '/', text: "foo"
    get contact_path
    assert_select 'title', full_title('Contact')
  end
end
