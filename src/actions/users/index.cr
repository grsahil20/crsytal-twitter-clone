class Users::Index < BrowserAction
  get "/users" do
    html Users::IndexPage
  end
end
