require './lib/aspose_cad_cloud/version'

Gem::Specification.new do |s|
  s.name        = 'aspose_cad_cloud'
  s.version     = AsposeCadCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Aspose'
  s.email       = 'denis.demenko@aspose.com'
  s.homepage    = 'https://github.com/aspose-cad-cloud/aspose-cad-cloud-ruby'
  s.summary     = 'SDK for operating with Aspose.CAD Cloud API to manipulate with CAD and BIM drawings'
  s.description = 'This SDK allows to work with Aspose.CAD Cloud REST API
                  in your Ruby applications quickly and easily, with zero initial cost
                  and perform various conversion and update operations on 
                  AutoCAD DWG, DXF, DWF, DWFX, DWT, STL, IGS, DGN, OBJ and CF2 files and export them into
                  different raster and vector formats like BMP, PSD, JPEG, TIFF, GIF, PNG, JPEG2000, SVG, WMF, PDF'
  s.license     = 'MIT'

  s.add_runtime_dependency 'faraday', '~> 2.9.0'
  s.add_runtime_dependency 'mimemagic', '~> 0.4.3'
  s.add_runtime_dependency 'faraday-multipart', '~> 1.0.4'
  
  s.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 2.7.0'
end
