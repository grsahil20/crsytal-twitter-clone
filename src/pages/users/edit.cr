class Users::EditPage < MainLayout
  needs user : User
  needs save_user : SaveUser

  def content
    h1 user.email
    user_form(save_user)
  end

  private def user_form(op)
    form_for Users::Update.with(user) do
      mount Shared::TailField, op.email, &.text_input(append_class: "hello border border-transparent")
      submit "Save User"
    end
  end
end
