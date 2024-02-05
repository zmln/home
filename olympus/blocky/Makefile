blocky-pod = $(shell kubectl -n blocky get pod -l app=blocky -o jsonpath='{.items[0].metadata.name}')

blocky-refresh-list:
	kubectl -n block exec $(blocky-pod) -- /app/blocky lists refresh

blocky-refresh-list:
	kubectl -n block exec $(blocky-pod) -- /app/blocky blocking enable

blocky-refresh-list:
	kubectl -n block exec $(blocky-pod) -- /app/blocky blocking disable
