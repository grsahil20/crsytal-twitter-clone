class Users::EditPage < MainLayout
  needs user : User
  needs save_user : SaveUser

  def content
    h1 user.email
    user_form
  end

  private def user_form
    form_for Users::Update.with(user) do
      mount Shared::Field, save_user.email
      submit "Save User"
    end
  end
end
