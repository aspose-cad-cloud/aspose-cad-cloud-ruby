![](https://img.shields.io/badge/api-v3.0-lightgrey) ![Gem](https://img.shields.io/gem/v/aspose_cad_cloud) ![Gem](https://img.shields.io/gem/dt/aspose_cad_cloud) 
# Aspose.CAD Cloud Ruby SDK
[Aspose.CAD Cloud](https://products.aspose.cloud/cad) is a true [REST API](https://apireference.aspose.cloud/cad/) that enables you to perform a wide range of CAD and BIM drawings processing operations including manipulation, editing, export and conversion in a cloud, with zero initial costs.

This repository contains [Aspose.CAD Cloud Ruby SDK](https://products.aspose.cloud/cad/ruby) source code which is written in Ruby. This SDK allows you to work with Aspose.CAD Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost and gain all benefits of strong types and IDE highlights.

## CAD Processing Features
- Export CAD drawings to other file formats.
- Get image properties of a CAD drawing.
- Change the scale of an AutoCAD sketch.
- Flip and rotate a CAD image.
- Upload or download CAD drawings to the cloud storage.
- Copy, move, delete CAD files from the cloud storage.

## Read & Write CAD Formats
DXF (R12/2007/2010)

## Save CAD As
*Fixed Layout*: PDF (as a vector and as a raster)
*Images*: BMP, PNG, JPG, JPEG, JPEG2000, TIF, TIFF, PSD, GIF, WMF

## Read CAD Formats
DWG (13, 14, 2000, 2004), DWG (2010, 2013, 2014), DWG (2015, 2017, 2018), DWT (13, 14, 2000, 2004), DWT (2010, 2013, 2014), DWT (2015, 2017, 2018), DWF, DGN v7, IGES (IGS), PLT, Industry Foundation Classes (IFC), STereoLithography (STL)
Look at [API Reference](https://apireference.aspose.cloud/cad/) for full API specification.

For the complete list of use-cases, please refer to the [format support document](https://docs.aspose.cloud/cad/supported-file-formats/) to see what you can achieve!

Detalied official documentation can be found at the [following link](https://docs.aspose.cloud/cad/).

## Getting Started
1. **Sign Up**. To use Aspose CAD Cloud Ruby SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is *free* quota available. For more details, check [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).
2. **Minimum requirements**. This SDK requires [Ruby 2.3 or later](https://www.ruby-lang.org/en/downloads/).
3. **Install Aspose.CAD Cloud Ruby SDK** The complete source code is available in this repository folder. You can either directly use it in your project via source code or get [RubyGem](https://rubygems.org/gems/aspose_cad_cloud) (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/cad/available-sdks/).

To install this package do the following:
update your Gemfile
```ruby
gem 'aspose_cad_cloud', '~> 20.11'
```
or install directly
```bash
gem install aspose_cad_cloud
```
4. **Using the SDK**. The best way to become familiar with how to use the SDK is to read the [Developer Guide](https://docs.aspose.cloud/cad/developer-guide/). The [Getting Started Guide](https://docs.aspose.cloud/cad/getting-started/) will help you to become familiar with the common concepts.

## Convert DWG to PDF in Ruby

```ruby
    # Get your ClientId and ClientSecret from https://dashboard.aspose.cloud (free registration required).

	@config = Configuration.new
	@config.api_key['api_key'] = 'MY_CLIENT_SECRET'
	@config.api_key['app_sid'] = 'MY_CLIENT_ID'
	@api_client = ApiClient.new @config
	
	@CAD_api = CADApi.new @api_client
	
	AsposeApp.app_key_and_sid(@config.api_key['api_key'], @config.api_key['app_sid'])
	filename = 'sample.dwg'
	remote_name = filename
	output_format = 'pdf'
	dest_name = remote_test_out + remote_name + '.' + output_format

	st_request = UploadFileRequest.new remote_test_folder + remote_name, File.open(local_test_folder + filename, "r")
	@Cad_api.upload_file st_request

	request = PostDrawingSaveAsRequest.new File.open(local_test_folder + filename, "r"), output_format, remote_test_folder + filename, nil
	result = @Cad_api.post_drawing_save_as_with_http_info request
```
      
[Tests](https://github.com/aspose-cad-cloud/aspose-cad-cloud-ruby/tree/master/tests) contain various examples of using the SDK.
Please put your credentials into [Configuration](https://github.com/aspose-cad-cloud/aspose-cad-cloud-ruby/blob/master/lib/aspose_cad_cloud/configuration.rb).

## Dependencies
- Ruby 2.3 or later
- referenced packages (check [here](Gemfile) for more details)

## Licensing
All Aspose.CAD Cloud SDKs, helper scripts and templates are licensed under MIT License.

## Aspose.CAD Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js |
|---|---|---|---|---|---|
| [GitHub](https://github.com/aspose-cad-cloud/aspose-cad-cloud-dotnet) | [GitHub](https://github.com/aspose-cad-cloud/aspose-cad-cloud-java) | [GitHub](https://github.com/aspose-cad-cloud/aspose-cad-cloud-php) | [GitHub](https://github.com/aspose-cad-cloud/aspose-cad-cloud-python) | [GitHub](https://github.com/aspose-cad-cloud/aspose-cad-cloud-ruby)  | [GitHub](https://github.com/aspose-cad-cloud/aspose-cad-cloud-nodejs) |
| [NuGet](https://www.nuget.org/packages/Aspose.cad-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-cad-cloud) | [Composer](https://packagist.org/packages/aspose/aspose-cad-cloud) | [PIP](https://pypi.org/project/aspose.cad-cloud/) | [GEM](https://rubygems.org/gems/aspose_cad_cloud)  | [NPM](https://www.npmjs.com/package/@asposecloud/aspose-cad-cloud) |

[Product Page](https://products.aspose.cloud/cad/ruby) | [Documentation](https://docs.aspose.cloud/display/cadcloud/Home) | [API Reference](https://apireference.aspose.cloud/cad/) | [Code Samples](https://github.com/aspose-cad-cloud/aspose-cad-cloud-ruby) | [Blog](https://blog.aspose.cloud/category/cad/) | [Free Support](https://forum.aspose.cloud/c/cad) | [Free Trial](https://dashboard.aspose.cloud/#/apps)|
