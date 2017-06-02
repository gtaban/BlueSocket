//
//  SocketProtocols.swift
//  BlueSocket
//
//  Created by Bill Abt on 1/7/16.
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

import Foundation

// MARK: Reader

///
/// Socket reader protocol
///
public protocol SocketReader {
	
	///
	/// Reads a string.
	///
	/// - Returns: Optional String
	///
	func readString() throws -> String?
	
	///
	/// Reads all available data into an Data object.
	///
	/// - Parameter data: Data object to contain read data.
	///
	/// - Returns: Integer representing the number of bytes read.
	///
	func read(into data: inout Data) throws -> Int
	
	///
	/// Reads all available data into an NSMutableData object.
	///
	/// - Parameter data: NSMutableData object to contain read data.
	///
	/// - Returns: Integer representing the number of bytes read.
	///
	func read(into data: NSMutableData) throws -> Int
}

// MARK: Writer

///
/// Socket writer protocol
///
public protocol SocketWriter {
	
	///
	/// Writes data from Data object.
	///
	/// - Parameter data: Data object containing the data to be written.
	///
	@discardableResult func write(from data: Data) throws -> Int
	
	///
	/// Writes data from NSData object.
	///
	/// - Parameter data: NSData object containing the data to be written.
	///
	@discardableResult func write(from data: NSData) throws -> Int
	
	///
	/// Writes a string
	///
	/// - Parameter string: String data to be written.
	///
	@discardableResult func write(from string: String) throws -> Int
}
