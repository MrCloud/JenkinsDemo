node('iOS Node') {

    stage('Checkout/Build') {

    // Checkout files.
       checkout([
           $class: 'GitSCM',
           branches: [[name: 'master']],
           doGenerateSubmoduleConfigurations: false,
           extensions: [], submoduleCfg: [],
           userRemoteConfigs: [[
               name: 'github',
               url: 'https://github.com/MrCloud/JenkinsDemo.git'
           ]]
       ])

       // Build
       sh 'xcodebuild -scheme "TimeTable" -configuration "Debug" -sdk "iphonesimulator" build'
    }

    stage ('TU') {
      // Run tests and generate junit report.
       sh 'xcodebuild -scheme "TimeTable" -configuration "Debug" build test -destination "platform=iOS Simulator,name=iPhone 6S,OS=10.3" -enableCodeCoverage YES | /Users/jenkins/.rbenv/shims/xcpretty --report junit'

       // Publish test results.
       step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: 'build/reports/junit.xml'])

    }


    stage ('Appium') {
    }

    stage('Qualité') {

    parallel Coverage: {
      // Generate Code Coverage report
      sh '/Users/jenkins/.rbenv/shims/slather coverage --jenkins --html --scheme TimeTable TimeTable.xcodeproj/'

      // Publish coverage results
      publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'html', reportFiles: 'index.html', reportName: 'Coverage Report'])
    }, Checkstyle: {

            // Generate Checkstyle report
            sh '/usr/local/bin/swiftlint lint --reporter checkstyle > checkstyle.xml || true'

            // Publish checkstyle result
            step([$class: 'CheckStylePublisher', canComputeNew: false, defaultEncoding: '', healthy: '', pattern: 'checkstyle.xml', unHealthy: ''])
        }, failFast: true|false

    }

    stage ('Déploiement') {
      // Archiver ipa
      sh 'fastlane gym --configuration "Release"'
      sh 'fastlane pilot upload'
    }

}
