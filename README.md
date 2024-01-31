# SlackMessagesEstimatorUtility

A robot that estimates Slack messages.

## Installing

Make sure Xcode 15.2 is installed first.

### [Mint](https://github.com/yonaskolb/mint)
```sh
mint install RomanPodymov/SlackMessagesEstimatorUtility
```

## Usage

Create Slack bot at https://my.slack.com/services/new/bot. Then go to **Integration Settings** -> **API Token** and copy the token. You will use it as `token-for-the-app-you-created`. Add the bot to the channels you want to listen.

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
