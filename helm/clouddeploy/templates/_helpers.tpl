{{/*
CloudDeploy Helm Helpers
*/}}

{{- define "clouddeploy.name" -}}
clouddeploy
{{- end }}

{{- define "clouddeploy.fullname" -}}
clouddeploy
{{- end }}

{{- define "clouddeploy.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
