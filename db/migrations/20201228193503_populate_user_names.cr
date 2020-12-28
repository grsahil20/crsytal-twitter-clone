class PopulateUserNames::V20201228193503 < Avram::Migrator::Migration::V1
  def migrate
    UserQuery.new.each do |user|
      SaveUser.update!(user, name: user.email.split('@').first)
    end
  end

  def rollback
  end
end
