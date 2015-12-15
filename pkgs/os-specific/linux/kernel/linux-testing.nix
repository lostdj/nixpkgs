{ stdenv, fetchurl, perl, buildLinux, ... } @ args:

import ./generic.nix (args // rec {
  version = "4.4-rc4";
  modDirVersion = "4.4.0-rc4";
  extraMeta.branch = "4.4";

  src = fetchurl {
    url = "mirror://kernel/linux/kernel/v4.x/testing/linux-${version}.tar.xz";
    sha256 = "040ddm61rifscssnycd1lq9bfni3yrsdrrgg172rb9h5d7ya6981";
  };

  features.iwlwifi = true;
  features.efiBootStub = true;
  features.needsCifsUtils = true;
  features.canDisableNetfilterConntrackHelpers = true;
  features.netfilterRPFilter = true;

  # Should the testing kernels ever be built on Hydra?
  extraMeta.hydraPlatforms = [];

  kernelPatches = stdenv.lib.singleton {
    name = "fix-depmod-cycle";
    patch = fetchurl {
      name = "lustre-remove-IOC_LIBCFS_PING_TEST-ioctl.patch";
      url = "https://lkml.org/lkml/diff/2015/11/6/987/1";
      sha256 = "0ja9103f4s65fyn5b6z6lggplnm97hhz4rmpfn4m985yqw7zgihd";
    };
  };

} // (args.argsOverride or {}))
