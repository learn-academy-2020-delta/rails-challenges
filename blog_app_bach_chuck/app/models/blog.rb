# class MyValidator < ActiveModel::Validator
#   def validate(blog)
#     unless blog.title.presence? true
#       blog.errors[:title] << 'Need a valid title!'
#     end
#     unless blog.title.uniqueness? true
#       blog.errors[:title] << 'Need a unique title!'
#     end
#     unless blog.title.length? minimum:10
#       blog.errors[:title] << 'Need a title > 10 characters!'
#     end
#   end
# end

class Blog < ApplicationRecord
  # include ActiveModel::Validations
  # validates_with MyValidator
  validates :title, presence: true, uniqueness: true, length: {minimum:10}
end

# blog = Blog.new
# blog.valid? => false
# blog.errors.messages => {:title=>["can't be blank", "name must be unique", "is too short (minimum is 10 characters)"]}
