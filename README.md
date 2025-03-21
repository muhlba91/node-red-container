# Node-RED Container

[![](https://img.shields.io/github/license/muhlba91/node-red-container?style=for-the-badge)](LICENSE)
[![](https://img.shields.io/github/actions/workflow/status/muhlba91/node-red-container/release.yml?style=for-the-badge)](https://github.com/muhlba91/node-red-container/actions/workflows/release.yml)
[![](https://api.scorecard.dev/projects/github.com/muhlba91/node-red-container/badge?style=for-the-badge)](https://scorecard.dev/viewer/?uri=github.com/muhlba91/node-red-container)
[![](https://img.shields.io/github/v/tag/muhlba91/node-red-container?style=for-the-badge)](https://github.com/muhlba91/node-red-container/releases)
[![](https://img.shields.io/github/release-date/muhlba91/node-red-container?style=for-the-badge)](https://github.com/muhlba91/node-red-container/releases)
<a href="https://www.buymeacoffee.com/muhlba91" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="28" width="150"></a>

An opinionated containerized version of [Node-RED](https://nodered.org).

---

## Installation Notes

Create your Node-RED configuration files locally and start the container:

```shell
$ docker run --name node-red \
  --network host \
  -v ${PWD}/config:/data \
  ghcr.io/muhlba91/node-red:<TAG>
```

### Container Tags

The container images are tagged according to:

1. the Node-RED version and current release (`ghcr.io/muhlba91/node-red:<RELEASE_TAG>`)
2. the Git Commit SHA (`ghcr.io/muhlba91/node-red:<GIT_COMMIT_SHA>`)

### Helm Chart

The [app-template by bjw-s](https://github.com/bjw-s/helm-charts/tree/main/charts/other/app-template) is the recommended chart to use this container with.

For example, to mount a `packages.txt` file from a ConfigMap you can add the folloiwng block to your `values.yaml` file:

```yaml
persistence:
  packages:
    enabled: true
    type: configMap
    name: node-red-packages-config
    globalMounts:
      - path: /init
```

---

## Configuration

Mount your Node-RED configuration files in `/data` when running the container.

Alternatively, you can mount a `settings.js` file in `/init/settings.js` which will be copied the `/data` upon starting up.

If you want to install additional packages on start-up, create a file `packages.txt` and mount it in `/init/packages.txt`:

```txt
package@version
```

---

## Contributing

We welcome community contributions to this project.

## Supporting

If you enjoy the application and want to support my efforts, please feel free to buy me a coffe. :)

<a href="https://www.buymeacoffee.com/muhlba91" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="75" width="300"></a>
