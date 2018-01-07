class Image < ApplicationRecord

  belongs_to :user

  mount_uploader :background_image, BackgroundUploader
  mount_uploader :shop_image1, ShopImage1Uploader
  mount_uploader :shop_image2, ShopImage2Uploader
  mount_uploader :shop_image3, ShopImage3Uploader
  mount_uploader :shop_image4, ShopImage4Uploader
  mount_uploader :shop_image5, ShopImage5Uploader
end
