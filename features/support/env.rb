puts "Executing: #{__FILE__}"
# ROOT_DIR = File.join(File.dirname(__FILE__), '..', '..')
# LIB_DIR = File.join(ROOT_DIR, 'lib')

#### Adding project files path (Gems path are already loaded by defaults)to the $LOAD_PATH ####
project_dir = File.join(File.dirname(__FILE__), '..', '..')
features_dir = File.join(project_dir, 'features')
pages_dir = File.join(features_dir, 'pages')
support_dir = File.join(features_dir, 'support')
data_dir = File.join(support_dir, 'data')
data_classes_dir = File.join(data_dir, 'data_classes')
lib_dir = File.join(Dir.pwd,'lib/helpers')
$LOAD_PATH.unshift(data_dir, data_classes_dir, pages_dir,lib_dir)
#### Requiring the Gems for execution ####
# require 'watir'
load "watir.rb"
require 'page-object'
#No need to add chromedriver, geckodriver to the ruby bin folder when include the statement require 'webdriver'
require 'webdrivers'
require 'report_builder'

require 'data_helper'
include DataHelper
# require 'page-object/page_factory'geckodriver
# World(PageObject::PageFactory)


