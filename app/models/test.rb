class Test < ApplicationRecord
  belongs_to :category

  def self.order_name_for_category(category_title)
    category = Category.find_by(title: category_title)
    Test.order('title DESC').where(category_id: category.id)
  end
end
