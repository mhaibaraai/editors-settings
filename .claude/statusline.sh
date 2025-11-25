#!/bin/bash
input=$(cat)

MODEL_DISPLAY=$(echo "$input" | jq -r '.model.display_name')
CURRENT_DIR=$(echo "$input" | jq -r '.workspace.current_dir')

GIT_BRANCH=""
if git rev-parse --git-dir > /dev/null 2>&1; then
  BRANCH=$(git branch --show-current 2>/dev/null)
  if [ -n "$BRANCH" ]; then
    GIT_BRANCH=" | 🌿 $BRANCH"
  fi
fi

COST=$(echo "$input" | jq -r '.cost.total_cost_usd // 0')
LINES_ADDED=$(echo "$input" | jq -r '.cost.total_lines_added // 0')
LINES_REMOVED=$(echo "$input" | jq -r '.cost.total_lines_removed // 0')

USAGE=""
if [ "$COST" != "0" ] || [ "$LINES_ADDED" != "0" ] || [ "$LINES_REMOVED" != "0" ]; then
  USAGE=" | 💰 \$$(printf '%.3f' $COST) | +$LINES_ADDED -$LINES_REMOVED"
fi

echo "[$MODEL_DISPLAY] 📁 ${CURRENT_DIR##*/}$GIT_BRANCH$USAGE"
