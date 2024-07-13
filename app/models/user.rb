class User < ApplicationRecord

  def self.level_tests(level)
    Test.where(level: level)
  end
end
