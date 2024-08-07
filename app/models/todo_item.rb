# == Schema Information
#
# Table name: todo_items
#
#  id           :integer          not null, primary key
#  completed_at :datetime
#  content      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  todo_list_id :integer          not null
#
# Indexes
#
#  index_todo_items_on_todo_list_id  (todo_list_id)
#
# Foreign Keys
#
#  todo_list_id  (todo_list_id => todo_lists.id)
#
class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
    !completed_at.blank?
  end
end
