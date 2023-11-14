if [ -x "$(command -v podman)" ]; then
  export DOCKER_HOST=unix://$(podman machine inspect --format '{{.ConnectionInfo.PodmanSocket.Path}}')
fi