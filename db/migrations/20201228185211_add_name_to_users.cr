class AddNameToUsers::V20201228185211 < Avram::Migrator::Migration::V1
  def migrate
    alter table_for(User) do
      add name : String, fill_existing_with: "-"
    end
  end

  def rollback
    alter table_for(User) do
      remove :name
    end
  end
end
