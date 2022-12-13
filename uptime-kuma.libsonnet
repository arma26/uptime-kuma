function (t)(
  local base = import 'defaultMonitor.jsonnet';
  base { type: t }
)
