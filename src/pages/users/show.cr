class Users::ShowPage < MainLayout
  needs user : User

  def content
    h1 user.email
    # all_users_table
  end

  private def all_users_table
    table do
      thead do
        th "Names"
        th "Email"
      end
      tbody do
        tr do
          td "aaa"
          td "aaa"
        end
      end
    end
    h3 "Next, you may want to:"
    ul do
      li "Modify this page: src/pages/me/show_page.cr"
      li "Change where you go after sign in: src/actions/home/index.cr"
    end
  end
end
