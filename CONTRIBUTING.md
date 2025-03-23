# Node.js Discord Status Worker Contributing Guide

In short, all changes should ideally be contributed to the [upstream worker](https://github.com/WalshyDev/cf-status-worker) first, with the [`$COMMIT_SHA` in `clone.sh`](./clone.sh) then being updated to the latest commit in the upstream repository. The only exceptions to this are changes to the [`clone.sh`](./clone.sh) script itself, or configuration changes in the Worker's [`wrangler.toml`](./worker/wrangler.toml) and [`src/config.ts`](./worker/src/config.ts) files.

## Updating the upstream worker

To update the version of the upstream worker used by this repository, follow these steps:

- Update the `$COMMIT_SHA` in the [`clone.sh`](./clone.sh) script to the latest commit in the upstream repository.
- Run the [`clone.sh`](./clone.sh) script to update the worker.
- Validate that the patches in the [`patches`](./patches) directory applied successfully.
- Commit the change to [`clone.sh`](./clone.sh), any patches, and the updated worker source code.
- Create a pull request to merge the changes into the `main` branch.

## Updating the worker configuration

To update the configuration of the worker, follow these steps:

- Update the configuration in the [`wrangler.toml`](./worker/wrangler.toml) and [`src/config.ts`](./worker/src/config.ts) files.
- From within the [`worker`](./worker/) directory, run `GIT_DIR=../.git.worker git diff -- wrangler.toml src/config.ts > ../patches/config.patch` to update the patch file.
- Commit the change to the configuration and the updated patch file.
- Create a pull request to merge the changes into the `main` branch.

## Updating the worker source code

It is highly encouraged that any changes to the logic of the worker be contributed to the [upstream worker](https://github.com/WalshyDev/cf-status-worker) first. If this is not possible, follow these steps:

- Make the changes to the worker source code.
- From within the [`worker`](./worker/) directory, run `GIT_DIR=../.git.worker git diff -- <modified files> > ../patches/<group>.patch` to update the patch file.
  - `<modified files>` should be replaced with the files that were modified.
  - `<group>` should be a one (or few) word summary grouping the changed files.
- If a modified file is included in [another existing patch](./patches), it should either be removed from that patch, or that patch should be updated to include the changes instead. A file should only be present in one patch.
- Commit the change to the worker source code and the new/updated patch file(s).
- Create a pull request to merge the changes into the `main` branch.

## Developer's Certificate of Origin 1.1

```
By contributing to this project, I certify that:

- (a) The contribution was created in whole or in part by me and I have the right to
  submit it under the open source license indicated in the file; or
- (b) The contribution is based upon previous work that, to the best of my knowledge,
  is covered under an appropriate open source license and I have the right under that
  license to submit that work with modifications, whether created in whole or in part
  by me, under the same open source license (unless I am permitted to submit under a
  different license), as indicated in the file; or
- (c) The contribution was provided directly to me by some other person who certified
  (a), (b) or (c) and I have not modified it.
- (d) I understand and agree that this project and the contribution are public and that
  a record of the contribution (including all personal information I submit with it,
  including my sign-off) is maintained indefinitely and may be redistributed consistent
  with this project or the open source license(s) involved.
```
