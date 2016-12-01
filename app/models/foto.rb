class Foto < ActiveRecord::Base
  mount_uploader :file, FileUploader

  validates_processing_of :file
  validate :file_size_validation
end

private
  def file_size_validation
    errors[:file] << "should be less than 500KB" if file.size > 0.5.megabytes
  end
