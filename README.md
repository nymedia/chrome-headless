# chrome-headless

![Docker buld status](https://img.shields.io/docker/build/nymediaas/chrome-headless.svg)
![Docker build automation](https://img.shields.io/docker/automated/nymediaas/chrome-headless.svg)

Docker image to have a headless chrome available via Chromedriver.

This is useful for running behat tests, for example.

## Example usage

```
docker run -p 8643:8643 -d nymediaas/chrome-headless
```

You can now use chromedriver in your `behat.yml`. The settings should be like so:

```yml
selenium2:
  wd_host: http://localhost:8643/wd/hub
  capabilities:
    chrome:
    switches:
      - "--headless"
      - "--disable-gpu"
      - "--no-sandbox"
```

Remember to set the base_url to an address that this container can reach. 

Or you can use it with `docker-compose` and use the name of your service as the `wd_host`.
