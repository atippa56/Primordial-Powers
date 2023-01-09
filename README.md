## IBM Cloud Mobile Starter in Swift

[![Platform](https://img.shields.io/badge/platform-ios_swift-lightgrey.svg?style=flat)](https://developer.apple.com/swift/)

### Table of Contents
* [Summary](#summary)
* [Requirements](#requirements)
* [Configuration](#configuration)
* [Run](#run)
* [License](#license)

### Summary

The mobile starter kit in Swift is an empty project. This project provides integration hooks that allow integration with the IBM Cloud Mobile services.

### Requirements

* iOS 12.0+
* Xcode 10.0
* Swift 5.0

### Configuration
* [IBM Cloud Mobile services Dependency Management](#ibm-cloud-mobile-services-dependency-management)
* [Mobile Foundation Configuration (Optional)](#mobile-foundation-configuration-optional)
* [AppLaunch Configuration (Optional)](#applaunch-configuration-optional)

#### IBM Cloud Mobile services Dependency Management

This starter kit uses the IBM Cloud Mobile services SDKs to use the functionality of Mobile Analytics, Push Notifications and Mobile Foundation services.

The IBM Cloud Mobile services SDK uses [CocoaPods](https://cocoapods.org/) to manage and configure dependencies. To use our latest SDKs, you need version 1.1.0.rc.2 or later.

You can install CocoaPods using the following command:

```bash
$ sudo gem install cocoapods --pre
```

If the CocoaPods repository is not configured, run the following command:

```bash
$ pod setup
```

For this starter, a pre-configured `Podfile` is included in the **ios_swift/Podfile** location. To download and install the required dependencies, run the following command in the **ios_swift** directory:

```bash
$ pod install
```
Open the Xcode workspace: `{APP_Name}.xcworkspace`. Continue to open the `.xcworkspace` file as it contains all the dependencies and configurations.

If you run into any issues during the pod install, it is recommended to run a pod update by using the following commands:

```bash
$ pod update
$ pod install
```

### Run

Click **Product > Run** to start the app in Xcode.  You will see a screen like this:

<img src="README_Images/basic_home_screen.png" alt="Empty App Screenshot" width="250px"/>

The application has built in integration points for the Mobile Analytics, Push Notifications, AppLaunch and Mobile Foundation services. If you have added these services then the basic code is automatically generated for the services.

### License
This package contains code licensed under the Apache License, Version 2.0 (the "License"). You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 and may also view the License in the LICENSE file within this package.
