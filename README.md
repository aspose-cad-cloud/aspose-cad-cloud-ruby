This repository contains Aspose.CAD Cloud SDK for Ruby source code. This SDK allows you to work with Aspose.CAD Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost.

## Key Features
* Conversion from various CAD formats (10+ formats supported) into various vector and raster images including DWG/DXF -> PDF conversion
* Supports the latest versions of AutoCAD DWG and DXF files 
* Convert the AutoCAD files to high quality PDF 
* Convert the AutoCAD files to high quality Raster images 
* Select and convert specific layouts 
* Select and convert specific layers Track the file conversion process

See [API Reference](https://apireference.aspose.cloud/CAD/) for full API specification.

## How to use the SDK?
The complete source code is available in this repository folder. You can either directly use it in your project via source code or get [RubyGem](https://rubygems.org/gems/aspose_CAD_cloud) (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/CADcloud/Available+SDKs).

### Prerequisites
To use Aspose CAD for Cloud Ruby SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

### Installation
To install this package do the following:
update your Gemfile
```ruby
gem 'aspose_CAD_cloud', '~> 18.7'
```
or install directly
```bash
gem install aspose_CAD_cloud
```

### Sample usage
```ruby
@config = Configuration.new
@config.api_key['api_key'] = '' # Put your's api_key and app_sid
@config.api_key['app_sid'] = ''
@api_client = ApiClient.new @config
@CAD_api = CADApi.new @api_client
AsposeApp.app_key_and_sid(@config.api_key['api_key'], @config.api_key['app_sid'])
@storage_api = StorageApi.new
request = DeleteDocumentWatermarkRequest.new remote_name, remote_test_folder + test_folder
result = @CAD_api.delete_document_watermark request
```
      
[Tests](tests/) contain various examples of using the SDK.
Please put your credentials into [Configuration](lib/configuration.rb).

## Dependencies
- Ruby 2.3 or later
- referenced packages (see [here](Gemfile) for more details)

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.aspose.cloud/c/CAD).
