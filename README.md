# Aspose.CAD Cloud Ruby SDK
[Aspose.CAD Cloud](https://products.aspose.cloud/cad) is a true [REST API](https://apireference.aspose.cloud/cad/) that enables you to perform a wide range of drawing processing operations including manipulation, editing, conversion and export in the cloud, with zero initial costs. Our Cloud SDKs are wrappers around REST API in various programming languages, allowing you to process images in language of your choice quickly and easily, gaining all benefits of strong types and IDE highlights. 

This repository contains [Aspose.CAD Cloud Ruby SDK](https://products.aspose.cloud/cad/ruby) source code which is written in Ruby. This SDK allows you to work with Aspose.CAD Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost and gain all benefits of strong types and IDE highlights.

To use this SDK, you will need App SID and App Key which can be looked up at [Aspose Cloud Dashboard](https://dashboard.aspose.cloud/#/apps) (free registration in Aspose Cloud is required for this).
[Aspose.CAD Cloud](https://products.aspose.cloud/cad) is a true [REST API](https://apireference.aspose.cloud/cad/) that enables you to perform a wide range of drawing processing operations including manipulation, editing, conversion and export in the cloud, with zero initial costs. Our Cloud SDKs are wrappers around REST API in various programming languages, allowing you to process images in language of your choice quickly and easily, gaining all benefits of strong types and IDE highlights. 

# Key Features
* Supports the latest versions of AutoCAD DWG, DXF, DWF, DWT, STL, IGS, DGN, OBJ and CF2 files
* Convert CAD drawings to high quality PDF
* Convert CAD drawing to high quality raster images
* Convert CAD drawing to high quality vector files like SVG and WMF
* Modify and convert CAD drawing to DXF
* Modify and convert CAD drawing to DWF
* Select and modify specific entities
* Retrieve & update drawing properties and metadata
* Select and convert specific layouts
* Select and convert specific layers
* Track the file conversion process

#### Drawing Formats Support
Export the following drawing to various formats (generally supported ones are BMP, PSD, JPEG, TIFF, GIF, PNG, JPEG2000, SVG, WMF and PDF):
* DWG
* DXF
* DWF
* DWT
* STL
* IGS
* DGN
* OBJ
* CF2

Process options, change and return drawings in the same format:
* DXF
* DWF

Output formats to export:
* BMP
* PSD
* JPEG
* TIFF
* GIF
* PNG
* JPEG2000
* SVG
* WMF
* PDF

#### Supported CAD Operations
* Export 
* Resize
* Crop
* Rotate and Flip

Check [API Reference](https://apireference.aspose.cloud/cad/) for full API specification.

The solution is updated using [code generator](https://github.com/aspose-cad-cloud/aspose-cad-cloud-codegen).

For the complete list of use-cases, please refer to the [format support document](https://docs.aspose.cloud/display/cadcloud/Supported+File+Formats) to see what you can achieve!

Detalied official documentation can be found at the [following link](https://docs.aspose.cloud/display/cadcloud).

## Getting Started
1. **Sign Up**. To use Aspose CAD Cloud Ruby SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is *free* quota available. For more details, check [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).
2. **Minimum requirements**. This SDK requires [Ruby 2.3 or later](https://www.ruby-lang.org/en/downloads/).
3. **Install Aspose.CAD Cloud Ruby SDK** The complete source code is available in this repository folder. You can either directly use it in your project via source code or get [RubyGem](https://rubygems.org/gems/aspose_cad_cloud) (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/cadcloud/Available+SDKs).

To install this package do the following:
update your Gemfile
```ruby
gem 'aspose_cad_cloud', '~> 19.11'
```
or install directly
```bash
gem install aspose_cad_cloud
```
4. **Using the SDK**. The best way to become familiar with how to use the SDK is to read the [Developer Guide](https://docs.aspose.cloud/display/cadcloud/Developer+Guide). The [Getting Started Guide](https://docs.aspose.cloud/display/cadcloud/Getting+Started) will help you to become familiar with the common concepts.

## Usage Samples
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

## Content
You may check our full [API endpoints list](docs/API_README.md#documentation-for-api-endpoints) or [models available](docs/API_README.md#documentation-for-models) in the SDK.

## Dependencies
- Ruby 2.3 or later
- referenced packages (check [here](Gemfile) for more details)

## Licensing
All Aspose.CAD Cloud SDKs, helper scripts and templates are licensed under [MIT License](LICENSE).

## Contact Us
Your feedback is very important to us. Please feel free to contact via
+ [**Free Support Forum**](https://forum.aspose.cloud/c/cad)
+ [**Paid Support Helpdesk**](https://helpdesk.aspose.cloud/)

## Resources
+ [**Web API reference**](https://apireference.aspose.cloud/cad/)
+ [**Website**](https://www.aspose.cloud)
+ [**Product Home**](https://products.aspose.cloud/cad)
+ [**Documentation**](https://docs.aspose.cloud/display/cadcloud/Home)
+ [**Blog**](https://blog.aspose.cloud/category/aspose-products/aspose.cad-cloud/)

## Other languages
We generate our SDKs in different languages so you may check if yours is available in our [repository](https://github.com/aspose-cad-cloud). If you don't find your language in the list, feel free to request it from us, or use raw REST API requests as you can find it [here](https://products.aspose.cloud/cad/curl).

## Code generator
The solution is updated using [code generator](https://github.com/aspose-cad-cloud/aspose-cad-cloud-codegen).
