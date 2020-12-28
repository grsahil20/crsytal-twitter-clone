class AddUserNameToUser::V20201228193942 < Avram::Migrator::Migration::V1
  def migrate
    alter table_for(User) do
      add user_name : String, index: true, fill_existing_with: "-"
    end
  end

  def rollback
    alter table_for(User) do
      remove :user_name
    end
  end
end
