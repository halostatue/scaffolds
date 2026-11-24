#!/usr/bin/env bash
#MISE description="Run pinact"

declare -a args
declare updating min_age
min_age=false
updating=false

while (($#)); do
  case "$1" in
  -m | --min-age)
    min_age=true
    args+=("$1")
    shift
    ;;
  -u | --update) updating=true ;;
  *) ;;
  esac

  args+=("$1")

  shift
done

if "${updating}" && ! "${min_age}"; then
  args+=(--min-age 7)
fi

set -- "${args[@]}"

if command -v gh >/dev/null 2>&1; then
  GITHUB_TOKEN="$(gh auth token)" pinact run "${@}"
else
  pinact run "${@}"
fi
