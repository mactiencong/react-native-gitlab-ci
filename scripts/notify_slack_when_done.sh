#!/bin/bash
curl -X POST --data-urlencode "payload={\"channel\": \"#anything\", \"username\": \"Enzi CI\", \"text\": \"${CI_COMMIT_TITLE} | Success! <${ANDROID_DOWNLOAD_URL}|DOWNLOAD>\", \"icon_emoji\": \":ghost:\"}" https://hooks.slack.com/services/xxxx
