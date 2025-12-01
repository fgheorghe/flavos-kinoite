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

bash <(curl -s https://raw.githubusercontent.com/blue-build/cli/main/install.sh)

sudo bluebuild generate-iso --iso-name flavos-kinoite.iso image ghcr.io/fgheorghe/flavos-kinoite

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/fgheorghe/flavos-kinoite
```
