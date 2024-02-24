# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'XgridAssessments' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  
  # Pods for XgridAssessments

  pod 'MBProgressHUD'
  pod 'IQKeyboardManagerSwift', '6.5.10'
  pod 'Toast-Swift', '~> 5.0.1'
  pod 'RealmSwift', '~> 10.20.1'
  pod 'ACFloatingTextfield-Objc', '~> 1.9'
  pod 'SDWebImage'
  
  
  target 'XgridAssessmentsTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'XgridAssessmentsUITests' do
    # Pods for testing
  end
  
  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
    end
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
               end
          end
   end
  end

end
