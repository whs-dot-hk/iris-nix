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
in {
  inherit iris_3_0_0;
}
