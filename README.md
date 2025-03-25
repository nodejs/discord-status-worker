<p align="center">
  <br />
  <a href="https://nodejs.org">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://nodejs.org/static/logos/nodejsLight.svg">
      <img src="https://nodejs.org/static/logos/nodejsDark.svg" width="200px">
    </picture>
  </a>
</p>

<p align="center">
  A <a href="https://workers.cloudflare.com">Cloudflare Worker</a> that provides a <a href="https://status.nodejs.org">status page</a> feed to the <a href="https://nodejs.org/discord">Node.js Discord server</a>.
</p>

<p align="center">
    <a title="MIT License" href="LICENSE">
        <img src="https://img.shields.io/badge/license-MIT-blue" alt="MIT License" />
    </a>
</p>

## Contributing

This project adopts the Node.js [Code of Conduct](https://github.com/nodejs/admin/blob/main/CODE_OF_CONDUCT.md).

Any person that wants to contribute to the Worker is welcome! Please read the [Contribution Guidelines](CONTRIBUTING.md) to better understand the structure of this repository.

### Deployment

The Worker is deployed to Cloudflare via [a GitHub Action](./.github/workflows/deploy.yml).

The Worker is automatically deployed to this environment when commits are merged into the `main` branch. The Worker is triggered by a cron trigger every minute and does not have any exposed HTTP endpoints.

## Relevant Links

- [Code of Conduct](https://github.com/nodejs/admin/blob/main/CODE_OF_CONDUCT.md)

- [Contribution Guidelines](CONTRIBUTING.md)

- [Upstream Worker](https://github.com/WalshyDev/cf-status-worker)

## License

This repo is licensed under the terms of the [MIT License](./LICENSE.md). It makes use of [WalshyDev's cf-status-worker](https://github.com/WalshyDev/cf-status-worker), which is also licensed under the MIT license.

## Thanks

- Thanks to all the contributors and collaborators that make this project possible.
- Thanks to [Atlassian](https://atlassian.com) for providing the infrastructure that serves the Status Page under their Open Source licensing.
- Thanks to [Cloudflare](https://cloudflare.com) for providing the infrastructure that serves the Worker under their Open Source Initiative in addition to immense support.
