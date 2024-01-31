//
//  main.swift
//  SlackMessagesEstimatorUtility
//
//  Created by Roman Podymov on 31/01/2024.
//  Copyright © 2024 SlackMessagesEstimatorUtility. All rights reserved.
//

import Foundation
import Rainbow
import SlackMessagesEstimator
import SwifterSwift

let configurationFilePath: String
if CommandLine.argc > 1, let configurationFilePathArg = CommandLine.arguments[safe: 1] {
    configurationFilePath = configurationFilePathArg
} else {
    configurationFilePath = FileManager.default.currentDirectoryPath
}
let configurationFilePathURL = URL(
    fileURLWithPath: configurationFilePath + "/sme.yml"
)
if let messagesEstimator = SlackMessagesEstimator(
    configurationFilePath: configurationFilePathURL
) {
    messagesEstimator.start()
    RunLoop.main.run()
} else {
    print("Could not create estimator".red.onWhite)
}
