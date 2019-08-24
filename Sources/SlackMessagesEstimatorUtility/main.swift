import Foundation
import SlackMessagesEstimator
import Rainbow

if let configurationFilePathURL = URL(string: CommandLine.arguments.first ?? FileManager.default.currentDirectoryPath),
    let messagesEstimator = SlackMessagesEstimator(
    configurationFilePath: configurationFilePathURL
) {
    messagesEstimator.start()
    RunLoop.main.run()
} else {
    print("Could not create estimator".red.onWhite)
}
