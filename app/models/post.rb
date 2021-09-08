class Post < ApplicationRecord
    before_create :titleize_author

    private
    def titleize_author
        self.author = self.author.to_s.titleize
    end
end
