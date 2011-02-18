class S3dbBackupGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  
  def generate_files
    copy_file "s3db_backup.rake", "lib/tasks/s3db_backup.rake"
    copy_file "secret.txt", "db/secret.txt"
    template "s3_config.yml.erb", "config/s3_config.yml"
  end
  
end