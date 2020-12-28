class Users::IndexPage < MainLayout
  def content
    h1 "Users"
    all_users_table
  end

  private def all_users_table
    table do
      tr do
        th "Names"
        th "Email"
      end
    end
    h3 "Next, you may want to:"
    ul do
      li "Modify this page: src/pages/me/show_page.cr"
      li "Change where you go after sign in: src/actions/home/index.cr"
    end
  end
end
