#!/bin/bash -l


export EVENT_JSON=$(cat ${GITHUB_EVENT_PATH})
echo "Github Event JSON:\n${EVENT_JSON}"

export PR_NUMBER=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.number')
export PR_STATE=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.state')
export PR_URL=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.url')
export PR_TITLE=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.title')
export PR_BODY=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.body')
export PR_CREATED=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.created_at')
export PR_MERGED=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.merged')
export PR_COMMITS=$(echo "$EVENT_JSON" | jq --raw-output '.pull_request.commits')

bash -c "docker $*"
