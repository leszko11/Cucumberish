// swift-tools-version:5.2
 // The swift-tools-version declares the minimum version of Swift required to build this package.

 import PackageDescription

 let package = Package(
     name: "Cucumberish",
     platforms: [
       .macOS("10.9"),
       .iOS("8.0"),
       .tvOS("9.0"),
       .watchOS("6.2")
     ],
     products: [
         .library(
             name: "Cucumberish",
             targets: ["Cucumberish"]),
     ],
     targets: [
         .target(
             name: "Cucumberish",
             dependencies: [],
             path: "./Cucumberish/Sources",
             publicHeadersPath: "./Cucumberish/Public Headers"),
         .testTarget(
             name: "CucumberishLibraryTest",
             dependencies: ["Cucumberish"]),
     ],
     swiftLanguageVersions: [.v5]
 )
