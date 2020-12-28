class Users::IndexPage < MainLayout
  needs users : UserQuery
  needs pages : Lucky::Paginator

  def content
    h1 "Users"
    all_users_table
    mount Lucky::Paginator::SimpleNav, pages
  end

  private def all_users_table
    table do
      users_table_head
      users_table_body
    end
  end

  private def users_table_head
    thead do
      th "Id"
      th "Email"
    end
  end

  private def users_table_body
    tbody do
      users.each do |user|
        user_table_row(user)
      end
    end
  end

  private def user_table_row(user : User)
    tr do
      td user.id
      td user.email
    end
  end
end
