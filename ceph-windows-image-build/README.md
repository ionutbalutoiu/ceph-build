# Ceph Windows Image Build

The Windows image can be generated, fully unattended, via the build script:

```bash
./build/build
```

The script assumes that the host is a KVM enabled machine, with `qemu` installed.

It accepts the following environment variables:

* `WINDOWS_SERVER_2019_ISO_URL` - URL to the Windows Server 2019 ISO image. It defaults to the official Microsoft evaluation ISO.
* `WINDOWS_SERVER_2019_ISO_CHECKSUM` - Checksum of the Windows Server 2019 ISO image. The accepted format is `<checksum_algorithm>:<checksum>` (for example `md5:70fec2cb1d6759108820130c2b5496da`). It defaults to the checksum of the official evaluation ISO.
* `VIRTIO_WIN_ISO_URL` - URL to the virtio-win guest tools ISO image. It defaults to the official stable ISO.
