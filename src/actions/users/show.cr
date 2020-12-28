class Users::Show < BrowserAction
  get "/users/:id" do
    user = fetch_user(id)

    html Users::ShowPage, user: user
  end

  memoize def fetch_user(id : String) : User
    UserQuery.new.find(id)
  end
end
