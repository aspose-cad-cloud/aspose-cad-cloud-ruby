require './lib/aspose_cad_cloud/version'

Gem::Specification.new do |s|
  s.name        = 'aspose_cad_cloud'
  s.version     = AsposeCadCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author      = 'DenisDemenko'
  s.email       = 'denis.demenko@aspose.com'
  s.homepage    = 'https://github.com/aspose-words-cloud/aspose-cad-cloud-ruby'
  s.summary     = 'Ruby library for communicating with the Aspose.CAD Cloud API'
  s.description = 'This SDK allows you to work with Aspose.CAD Cloud REST APIs
                  in your Ruby applications quickly and easily, with zero initial cost'
  s.license     = 'MIT'

  s.add_runtime_dependency 'faraday', '~> 0.14.0'
  s.add_runtime_dependency 'mimemagic', '~> 0.3.2'
  
  s.add_development_dependency 'aspose_storage_cloud', '~> 18.6', '>= 18.5'
  s.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '~> 2.3'
end
