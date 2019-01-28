# chrome-headless

![Docker buld status](https://img.shields.io/docker/build/nymediaas/chrome-headless.svg)

Docker image to have a headless chrome available via Chromedriver.

This is useful for running behat tests, for example.

## Example usage

docker run -d nymediaas/chrome-headless -p 8643:8643

You can now use chromedriver in your `behat.yml`.

Remember to set the base_url to an address that this container can reach. 
