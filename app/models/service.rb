class Service < ApplicationRecord
    mount_uploader :service_image, ServiceImageUploader
    SERVICE_NAMES = %w(
    Aroma_Treatment Accessories School
    )

    
end
