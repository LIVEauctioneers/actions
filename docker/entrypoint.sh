#!/bin/sh -l


EVENT_JSON=$(cat ${GITHUB_EVENT_PATH})

echo "using '${EVENT_JSON}'"

export PR_NUMBER=$(echo "$EVENT_JSON" | jq '.pull_request.number')
export PR_STATE=$(echo "$EVENT_JSON" | jq '.pull_request.state')
export PR_URL=$(echo "$EVENT_JSON" | jq '.pull_request.url')
export PR_TITLE=$(echo "$EVENT_JSON" | jq '.pull_request.title')
export PR_BODY=$(echo "$EVENT_JSON" | jq '.pull_request.body')
export PR_CREATED=$(echo "$EVENT_JSON" | jq '.pull_request.created_at')
export PR_MERGED=$(echo "$EVENT_JSON" | jq '.pull_request.merged')
export PR_COMMITS=$(echo "$EVENT_JSON" | jq '.pull_request.commits')

sh -c "docker $*"
