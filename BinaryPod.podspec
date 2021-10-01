Pod::Spec.new do |s|
  s.name                  = "BinaryPod"
  s.version               = "0.0.1"
  s.summary               = "BinaryPod"
  s.description           = <<-DESC
                                BinaryPod
                            DESC
  s.homepage              = "https://github.com/stidch/CocoapodsIssueBinaryPod"
  s.license               = { :type => 'Copyright', :text => <<-LICENSE
                                BinaryPod
                              LICENSE
                            }
  s.author                = { "BinaryPod" => "binarypod@binarypod.com" }
  s.platform              = :ios
  s.ios.deployment_target = "9.0"
  s.source                = { :http => 'https://github.com/stidch/CocoapodsIssueSampleProject/blob/main/BinaryFrameworks/BinaryPod-0.0.1.zip?raw=true' }
  s.vendored_frameworks   = 'BinaryPod/BinaryPod.xcframework'
  s.requires_arc          = true
end
