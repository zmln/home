blocky-pod = $(shell kubectl -n blocky get pod -l app=blocky -o jsonpath='{.items[0].metadata.name}')

blocky-refresh-list:
	kubectl -n blocky exec $(blocky-pod) -- /app/blocky lists refresh

blocky-refresh-list:
	kubectl -n blocky exec $(blocky-pod) -- /app/blocky blocking enable

blocky-refresh-list:
	kubectl -n blocky exec $(blocky-pod) -- /app/blocky blocking disable

blocky-restart-pods:
	kubectl -n blocky rollout restart deployment blocky
