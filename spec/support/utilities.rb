include ApplicationHelper

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: 'Invalid')
  end
end

# Returns the full title on a per-page basis
# def full_title(page_title)
#   base_title = 'Ruby on Rails Tutorial Sample App'
#   if page_title.empty?
#     base_title
#   else 
#     "#{base_title} | #{page_title}"
#   end
# end