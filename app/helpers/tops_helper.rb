module TopsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_tops_path
    elsif action_name == 'edit'
      top_path
    end
  end
end
