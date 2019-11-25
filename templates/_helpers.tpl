{{- /*
Standard labels for all resources created by a chart
*/ -}}
{{- define "standard.labels" }}
labels:
  heritage: {{ .Release.Service }}
  release: {{ .Release.Name }}
  chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
  app: {{ .Values.app.name }}
{{- end }}