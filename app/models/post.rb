class Post < ApplicationRecord
    validates_presence_of :title
    validates_presence_of :content

    has_rich_text :content
    has_many :comments, dependent: :destroy

    def self.test_class_method
        puts 'Im a class method'
    end

    def test_instance_method
        puts 'Im a instance method'
    end
end
