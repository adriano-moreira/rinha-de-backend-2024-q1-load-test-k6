cat summary.json | jq -c '.metrics.http_reqs.values.count'
