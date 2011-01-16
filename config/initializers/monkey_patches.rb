ruby_files = Rails.root.join('lib', 'monkey_patches', '*.rb')

Dir.glob(ruby_files).each do |file|
  require file
end
