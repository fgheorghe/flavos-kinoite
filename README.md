# FlavOS Kinoite

Adds: guestfs-tools and mc by default. Based on Kinoite-NVIDIA.

## Installation

# Rebase to your custom image
sudo rpm-ostree reset
sudo rpm-ostree rebase ostree-unverified-registry:ghcr.io/fgheorghe/flavos-kinoite:latest

# Or with signature verification:
sudo rpm-ostree reset
sudo rpm-ostree rebase ostree-image-signed:docker://ghcr.io/fgheorghe/flavos-kinoite:latest

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/fgheorghe/flavos-kinoite
```
