source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
use_frameworks!

target 'JenkinsDemo' do
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
