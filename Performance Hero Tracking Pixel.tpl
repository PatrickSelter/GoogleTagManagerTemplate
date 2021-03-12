___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Performance Hero Tracking Pixel",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Tracking Pixel für Performance Hero.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "trackingPixelID",
    "displayName": "Tracking ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "domainName",
    "displayName": "Domain Name",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "noticeText",
    "displayName": "Notiz Text",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const query = require('queryPermission');
const iframe = require('injectHiddenIframe');
const encodeUriComponent = require('encodeUriComponent');

if (data.trackingPixelID == '')
  data.gtmOnFailure();

const url = 'https://www.' + encodeUriComponent(data.domainName) + '/modules/affili/frontend/campaignVerifier/' + encodeUriComponent(data.noticeText) + '_' + encodeUriComponent(data.trackingPixelID) + '.png';
if (query('inject_hidden_iframe', url)) {
  iframe(url, data.gtmOnSuccess, data.gtmOnFailure);
} else {
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_hidden_iframe",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 12.3.2021, 13:24:12


