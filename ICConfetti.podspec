Pod::Spec.new do |spec|

  spec.name         = "ICConfetti"
  spec.version      = "0.0.1"
  spec.summary      = "It's raining confetti. 🎉"

  spec.platform = :ios, '13.0'

  spec.description  = <<-DESC
    Adding delight with confetti. ICConfetti lets you rain confetti in your views.
                   DESC

  spec.homepage     = "https://github.com/ishan-chhabra/ICConfetti"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Ishan Chhabra" => "me@ishanchhabra.com" }
  spec.social_media_url   = "https://twitter.com/chh_abracadabra"

  spec.source       = { :git => "https://github.com/ishan-chhabra/ICConfetti.git", :tag => "#{spec.version}" }

  spec.source_files  = "ICConfetti/**/*.{swift}"
  spec.exclude_files = "Classes/Exclude"

  spec.resource  = "ICConfetti/**/*.{bundle}"

end
