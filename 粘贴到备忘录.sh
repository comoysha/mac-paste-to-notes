#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title 粘贴到备忘录
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 📝
# @raycast.packageName paste_to_notes

# Documentation:
# @raycast.description 粘贴到备忘录
# @raycast.author shylockjoy
# @raycast.authorURL https://raycast.com/shylockjoy

WORKFLOW_PATH="/Users/xiayue/Library/Workflows/mac粘贴到备忘录.workflow"
automator "$WORKFLOW_PATH"