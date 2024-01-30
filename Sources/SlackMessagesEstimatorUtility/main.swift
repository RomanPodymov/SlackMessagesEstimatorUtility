import Foundation
import Rainbow
import SlackMessagesEstimator
import SwifterSwift

let configurationFilePath: String = "/Users/romanpodymov/SlackMessagesEstimatorUtility"
/*if CommandLine.argc > 1, let configurationFilePathArg = CommandLine.arguments[safe: 1] {
    configurationFilePath = configurationFilePathArg
} else {
    configurationFilePath = FileManager.default.currentDirectoryPath
}*/
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
