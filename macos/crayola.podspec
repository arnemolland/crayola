#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint crayola.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name = "crayola"
  s.version = "0.0.1"
  s.summary = "A Flutter plugin for managing desktop window color style."
  s.description = <<-DESC
  A Flutter plugin for managing desktop window color style.
                       DESC
  s.homepage = "http://molland.sh"
  s.license = { :file => "../LICENSE" }
  s.author = { "molland.sh" => "arne@molland.sh" }
  s.source = { :path => "." }
  s.source_files = "Classes/**/*"
  s.dependency "FlutterMacOS"

  s.platform = :osx, "11.0"
  s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES" }
  s.swift_version = "5.0"
end
