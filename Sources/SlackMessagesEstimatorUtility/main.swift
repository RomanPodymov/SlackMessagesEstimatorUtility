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
if let configurationFilePathURL = URL(
    string: configurationFilePath + "/sme.yml"
), let messagesEstimator = SlackMessagesEstimator(
    configurationFilePath: configurationFilePathURL
) {
    messagesEstimator.start()
    RunLoop.main.run()
} else {
    print("Could not create estimator".red.onWhite)
}
