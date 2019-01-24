#!/bin/bash
curl -X POST --data-urlencode "payload={\"channel\": \"#anything\", \"username\": \"Enzi CI\", \"text\": \"Error <https://gitlab.com/enzi_it/supotore_new/pipelines/${CI_PIPELINE_ID}/|VIEW>\", \"icon_emoji\": \":ghost:\"}" https://hooks.slack.com/services/xxx
