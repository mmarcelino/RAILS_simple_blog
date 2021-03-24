module ApplicationHelper
  def current_class?(my_test_path)
    return 'active' if request.path == my_test_path
  end
end

# request.path
# returns virtual path (without query string)
# ex: "http://localhost:3000/ask-help.amp?hui=pizda"
# => "/ask-help.amp"
