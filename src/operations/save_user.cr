class SaveUser < User::SaveOperation
  permit_columns email

  before_save do
    validate_required email
  end

  before_save reject_scary_monsters

  def reject_scary_monsters
    email.add_error "Mmmyyaahhh!" if email.value == "ich.heisse.sahil@gmail.comm"
  end
end
