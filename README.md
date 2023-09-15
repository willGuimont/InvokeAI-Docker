# InvokeAI Dockerfile

## Build

```bash
docker build -t invoke . 
```

## Running

```bash
docker-compose run --build app
# then install
./install.sh
# then start
~/invokeai/invoke.sh
# open http://127.0.0.1:9090
```

You can connect an additional TTY to the container using:

```bash
docker exec -it <name> bash
```

`/app/output` is a volume mapped to `./output/`, so you can use it to transfert data from and to the container.
