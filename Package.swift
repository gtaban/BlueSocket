//
//  BlueSocket.swift
//  BlueSocket
//
//  Copyright © 2016 IBM. All rights reserved.
//
// 	Licensed under the Apache License, Version 2.0 (the "License");
// 	you may not use this file except in compliance with the License.
// 	You may obtain a copy of the License at
//
// 	http://www.apache.org/licenses/LICENSE-2.0
//
// 	Unless required by applicable law or agreed to in writing, software
// 	distributed under the License is distributed on an "AS IS" BASIS,
// 	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// 	See the License for the specific language governing permissions and
// 	limitations under the License.
//

import PackageDescription

#if os(Linux) || os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
	
	let package = Package(
		name: "Socket",
		targets: [Target(name: "Socket")],
		dependencies: [
			.Package(url: "https://github.com/swift-server/security.git", majorVersion: 0),
			],
		exclude: ["BlueSocket.xcodeproj", "BlueSocket.xcworkspace", "README.md", "Sources/Info.plist", "Sources/Socket.h"]
	)

#else
	
	fatalError("Unsupported OS")
	
#endif
