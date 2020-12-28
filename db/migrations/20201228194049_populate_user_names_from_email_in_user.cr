class PopulateUserNamesFromEmailInUser::V20201228194049 < Avram::Migrator::Migration::V1
  def migrate
    UserQuery.new.each do |user|
      user_name = [user.email.split('@').first, user.id].join('_')
      SaveUser.update!(user, user_name: user_name)
    end
  end

  def rollback
  end
end
