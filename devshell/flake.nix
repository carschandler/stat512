{
  description = "R Development Shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      # rstudio = pkgs.rstudioWrapper;
      # rstudio = pkgs.rstudio;
    in {
        devShells.x86_64-linux.default = pkgs.mkShell {
          nativeBuildInputs = [ 
            # pkgs.rWrapper.override {
            #   packages = [
            #     pkgs.rPackages.alr4
            #     pkgs.rPackages.leaps
            #     pkgs.rPackages.SuppDists
            #     pkgs.rPackages.rmarkdown
            #   ];
            # }

            pkgs.R
            pkgs.rPackages.languageserver
            pkgs.rPackages.alr4
            pkgs.rPackages.leaps
            pkgs.rPackages.SuppDists
            pkgs.rPackages.rmarkdown
            pkgs.rstudio
            pkgs.texliveFull
            pkgs.pandoc
          ];
        };

        formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
    };
}
