source 'https://github.com/CocoaPods/Specs.git'
source 'https://gitlab.com/MrCloud/PiOSPodSpecs'

platform :ios, '9.0'
use_frameworks!

def pios
  pod 'PiOS', '~> 0.1'
end

def config
    pod 'Natrium', :git => 'https://github.com/MrCloud/Natrium.git'
end

def logging
    pod 'PiOSLogger', '~> 0.1'
end

def networking
    #pod 'Moya'
    #pod 'Alamofire'         # HTTP/Network Client
    #pod 'ReachabilitySwift', '~> 2.4'   # Reachability Checking
    pod 'PiOSImageLoader/KingFisher', '~> 0.9.2'
end

def persistence
    pod 'RealmSwift', '~> 2.0'            # Database
end

def mapping
    pod 'Moya-ObjectMapper'
    pod 'ObjectMapper', '~> 1.0'               # JSON<->Object or pod 'SwiftyJSON'
    pod 'AlamofireObjectMapper', '~> 3.0.2'      # Alamofire ObjectMapper Support
    pod 'ObjectMapper+Realm', '~> 0.1'           # Realm ObjectMapper Support
end

def architecture
    pod 'Hakuba', :git => 'https://github.com/dimaperepelitsa/Hakuba.git', :branch => 'Swift3' # Cellmodel-driven tableview manager
    pod 'StatefulViewController', '~> 2.0' # Add State to VC, alternative: pod 'StatusProvider'
end

def preferences
    pod 'Prephirences'                  # Preferences Manager
    pod 'SwiftyUserDefaults'            # User Defaults Wrapper
    pod 'KeychainSwift'                 # Keychain Wrapper
end

def permissions
    pod 'Permission'                    # Permissions Helper
end

def security
    pod 'CryptoSwift'                   # Crypto Library
    pod 'CryptoPrephirences'            # Add Crypto to Preferences Manager
end

def notification_center
    pod 'Kugel'                         # Notification observing helper
end

def ui
    pod 'SnapKit'                       # Autolayout Helper
    pod 'Eureka'                        # iOS Form Builder
    pod 'Preheat'                       # Data/Image Prefetcher
    #pod 'Toucan'
    pod 'Spring', :git => 'https://github.com/MengTo/Spring.git', :branch => 'swift2' # A library to simplify iOS animations
    pod 'IBLocalizable'                 # Localize your views directly in Interface Builder
end

def scan_barcode
  pod 'GLScanner', :git => 'http://gitlab-xnet.fr.corp.leroymerlin.com/fr-lm-mobilite-cocoapods/GLScanner.git', :branch => 'swift2.3'                               # Native Scan Wrapper
  pod 'BarCode', '~> 0.1.0'                # BarCode Image Generator
end

def keyboard_and_validation
    pod 'KeyboardObserver'              # Keyboard notification observing
    pod 'Validator'                     # Input Data validation vs pod 'Validated' vs pod 'SwiftCop'
end

def app_version
    pod 'AppVersionMonitor'             # App Version Checking
    pod 'Siren'                         # App Version / Upgrade Management
end

def app_review
    pod 'Armchair'                      # User Review Helper
end

def in_app_purchase
    pod 'SwiftyStoreKit'                # StoreKit Wrapper
end

# Deep Linking and inter app communication + App Icon Shortcut
def app_linking_shortcuts
    pod 'CallbackURLKit'                # Inter App Communication
    pod 'Compass'                       # Deep Linking / Navigation Router
    pod 'QuickActions'                  # App Icon Shortcut (Force Touch)
end

def generators
    pod 'R.swift', '~> 2.5.0' # Asset and Ressources Constant Generator 'A la Android' / Alternative: pod 'SwiftGen'
end

def helpers
    pod 'XLSwiftKit'                    # Helpers and extensions for Swift
end

def debugging
    pod 'Cribble'                       # UI Check Tool
    pod 'Peek'                          # UI Checking Library
end

def testing
    pod 'Quick'                         # BDD Framework
    pod 'Nimble'                        # Matchers
    pod 'Mockingjay'                    # Stub http/https
    pod 'Kakapo'                        # Mock Server Responses
    pod 'Fakery'                        # Generate Fake Data
    pod 'CatchingFire'                  # Making Expectations Against Error Handling
    pod 'Outlets'                       # Check
end

def analytics
    pod 'Trackable'                    # Analytics DSL
end

target 'JenkinsDemo' do
  pios
  networking
  logging
  config
end

pre_install do |installer|
    def installer.verify_no_static_framework_transitive_dependencies; end
end

# FIXME: overrides PiOS OTHER_SWIFT_FLAGS

# post_install do |installer|
#     installer.pods_project.targets.each do |target|
#             target.build_configurations.each do |config|
#             if config.name == 'Release'
#                 config.build_settings['OTHER_SWIFT_FLAGS'] = ''
#             else
#                 config.build_settings['OTHER_SWIFT_FLAGS'] = '-DDEBUG'
#             end
#         end
#     end
# end
