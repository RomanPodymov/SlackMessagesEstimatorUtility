# SlackMessagesEstimatorUtility

An utility that estimates messages based on configuration file.

## Installing

Make sure Xcode 15.2 is installed first.

### [Mint](https://github.com/yonaskolb/mint)
```sh
mint install RomanPodymov/SlackMessagesEstimatorUtility
```

## Usage

### Setup a Classic App (the original text is [here](https://github.com/slackapi/hubot-slack/issues/584#issuecomment-611808704))

* Create a classic app from https://api.slack.com/apps?new_classic_app=1
    * Go to Features > OAuth & Permissions > Scopes
    * Click "Add an OAuth Scope"
    * Search "bot" and choose it
* Go to Features > App Home
    * Click "Add Legacy Bot User"
    * Input "Display Name" and "Default username"
    * Click "Add"
* Go to Settings > Install App
    * Click "Install App to Workspace"
    * Complete the OAuth flow

Create the following **sme.yml** file in any directory:

```yml
---
token: token-for-the-app-you-created
emojisToMessages:
  reportChannelName: channel-to-report-name
  ignoreUsers:
    - user.name
  emojisToMessagesCases:
    - emojis:
      - emoji1
      - emoji2
      textProperties:
        startsWith: 
          - first string
        endsWith:
          - second string
        contains: 
          - third string
    - emojis:
      - emoji3
      - emoji4
      textProperties:
        contains: 
          - another string
```

Then run:

```shell
smeu /path/to/sme.yml/just/path/without/filename/and/extension
```

## Attributions

This tool is powered by:

- [Rainbow](https://github.com/onevcat/Rainbow)
- [SlackMessagesEstimator](https://github.com/RomanPodymov/SlackMessagesEstimator)
- [SwifterSwift](https://github.com/SwifterSwift/SwifterSwift)

## License

SlackMessagesEstimatorUtility is licensed under the MIT license. See [LICENSE](LICENSE) for more info.
