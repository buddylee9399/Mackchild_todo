# == Schema Information
#
# Table name: todo_lists
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy
end
