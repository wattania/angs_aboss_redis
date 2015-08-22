docker run --rm -it \
-v $(pwd):/backup \
--volumes-from angs_aboss_redis_data \
--privileged \
docker.io/angstroms/angs_aboss_redis:app \
bash
