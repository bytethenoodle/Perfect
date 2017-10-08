// swift-tools-version:4.0
//
//  Package.swift
//  PerfectLib
//
//  Created by Kyle Jessup on 3/22/16.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

var urls = [String]()

#if os(Linux)
let package = Package(
    name: "PerfectLib",
    products: [
        .library(
            name: "PerfectLib",
            targets: ["PerfectLib"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-LinuxBridge.git", .upToNextMinor(from: "3.0.0"))
    ],
    targets: [
        .target(
            name: "PerfectLib",
            dependencies: ["LinuxBridge"]
        )
    ]
)
#else
let package = Package(
    name: "PerfectLib",
    products: [
        .library(
            name: "PerfectLib",
            targets: ["PerfectLib"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PerfectLib",
            dependencies: []
        )
    ]
)
#endif
