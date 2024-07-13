class Test < ApplicationRecord
  belongs_to :category

  def self.order_name_for_category(category_title)
    Category.find_by(title: category_title)
    Test.joins('JOIN categories ON tests.category_id = categories.id')
        .where(categories: { title: 'Programm', })
        .order('title DESC')
        .pluck(:title)
  end
end
