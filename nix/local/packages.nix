with inputs.nixpkgs; let
  iris_3_0_0 = buildGoModule rec {
    pname = "iris";
    version = "3.0.0";
    src = fetchurl {
      sha256 = "sha256-U5uGCCdN1rSp7kc1urQpz+4Tzu4Kkklt+BArgyolawI=";
      url = "https://github.com/irisnet/irishub/archive/refs/tags/v${version}.tar.gz";
    };
    vendorHash = "sha256-+kxgV2YaKzNIEYZDAuT+H5iEeFU2f7/AMdYlyVl4jIg=";
    subPackages = "cmd/iris";
  };
  iris_3_1_0 = buildGoModule rec {
    pname = "iris";
    version = "3.1.0";
    src = fetchurl {
      sha256 = "sha256-SwdRGk30QhZUoaIdTOk1+RCGZzJ6Dw3YzCY79smOtEQ=";
      url = "https://github.com/irisnet/irishub/archive/refs/tags/v${version}.tar.gz";
    };
    vendorHash = "sha256-+0CnMC4sMyolmAkrpjBf/G4XwWZyKHBN06FAC5GiHkE=";
    subPackages = "cmd/iris";
  };
  iris_4_0_1 = buildGoModule rec {
    pname = "iris";
    version = "4.0.1";
    src = fetchurl {
      sha256 = "sha256-+wbmrz+01VXB1z6QXpurUYDPxeDArS5tWy9ug9v3GDQ=";
      url = "https://github.com/irisnet/irishub/archive/refs/tags/v${version}.tar.gz";
    };
    vendorHash = "sha256-ZL0RcHFC5VGPqVLOzcW/yti983e60n30Zf5DQpDtRZA=";
    subPackages = "cmd/iris";
  };
in {
  inherit iris_3_0_0;
  inherit iris_3_1_0;
  inherit iris_4_0_1;
}
