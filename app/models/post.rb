class Post < ApplicationRecord
    before_create :titleize_author

    after_create :notify_admin

    mount_uploader :picture, PictureUploader

    def notify_admin
       PostFetchJob.perform_later(self)
    end

    private
    def titleize_author
        self.author = self.author.to_s.titleize
    end
end
