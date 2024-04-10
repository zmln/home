blocky-pod = $(shell kubectl -n blocky get pod -l app=blocky -o jsonpath='{.items[0].metadata.name}')

blocky-refresh-list:
	kubectl -n blocky exec $(blocky-pod) -- /app/blocky lists refresh

blocky-enable:
	kubectl -n blocky exec $(blocky-pod) -- /app/blocky blocking enable

blocky-disable:
	kubectl -n blocky exec $(blocky-pod) -- /app/blocky blocking disable --groups ads

blocky-restart-pods:
	kubectl -n blocky rollout restart deployment blocky
