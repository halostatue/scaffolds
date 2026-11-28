{{- /* .config/mise/tasks/vale. Knobs: .Computed.ignoreDirs (comma list, optional). */ -}}
#!/usr/bin/env bash
#MISE description="Lint prose with Vale"
#USAGE arg "[paths]" var=#true default="." help="Files or directories to lint"

{{ with .Computed.ignoreDirs -}}
{{ $dirs := splitList "," . -}}
vale --glob='!{{ if gt (len $dirs) 1 }}{ {{- join "," $dirs -}} }{{ else }}{{ first $dirs }}{{ end }}/**' "${@:-.}"
{{- else -}}
vale "${@:-.}"
{{- end }}
