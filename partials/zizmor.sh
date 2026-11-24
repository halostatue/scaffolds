#!/usr/bin/env bash
#MISE description="Run zizmor"

(($#)) || set -- .

if command -v gh >/dev/null 2>&1; then
  GH_TOKEN="$(gh auth token)" zizmor "${@}"
else
  zizmor "${@}" --no-online-audits
fi
