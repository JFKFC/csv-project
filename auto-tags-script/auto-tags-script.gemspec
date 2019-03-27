# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "Auto Tag Script"
  spec.version       = '1.0'
  spec.authors       = ["Brandon Belcher"]
  spec.email         = ["brandon.belcher0017@gmail.com"]
  spec.summary       = %q{Create a CSV file with email and tag fields.}
  spec.description   = %q{This is a project inspired by Alex Kell to create a script that would create and write in Column values 
                        for a CSV file. The values are @param Email address, First Name, Last Name, and Tags. The @param tags value in the CSV will 
                        randomly pull from an Array.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "N/A"

  spec.files         = ['lib/auto-tags-script.rb']
  spec.executables   = ['bin/auto-tags-script']
  spec.test_files    = ['tests/test_auto-tags-script.rb']
  spec.require_paths = ["lib"]
end