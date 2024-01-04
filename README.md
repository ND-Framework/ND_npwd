# ND_npwd

### config.json
```json
{
  "PhoneAsItem": {
    "enabled": false,
    "exportResource": "my-core-resource",
    "exportFunction": "myCheckerFunction"
  },
  "general": {
    "useResourceIntegration": true,
    "toggleKey": "f1",
    "toggleCommand": "phone",
    "defaultLanguage": "en"
  },
  "contacts": {
    "frameworkPay": false,
    "payResource": "my-core-resource",
    "payFunction": "myCheckerFunction"
  },
  "profanityFilter": {
    "enabled": false,
    "badWords": ["esx"]
  },
  "database": {
    "useIdentifierPrefix": true,
    "playerTable": "nd_characters",
    "identifierColumn": "identifier",
    "identifierType": "license",
    "profileQueries": true,
    "phoneNumberColumn": "phone_number"
  },
  "debug": {
    "level": "silly",
    "enabled": true,
    "sentryEnabled": true
  },
  "browser": {
    "homepageUrl": "https://docs.fivemanage.com"
  },
  "defaultContacts": [],
  "disabledApps": [],
  "apps": [],
  "voiceMessage": {
    "enabled": false,
    "authorizationHeader": "PE-Secret",
    "url": "",
    "returnedDataIndexes": ["url"]
  }
}
```
