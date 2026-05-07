homebrew-rme
----

Collection of RME software as Homebrew tap.

Available casks:
* RME Adi2 Remote
* RME TotalMix FX

# Installation
## Homebrew

```
brew tap sudokamikaze/rme git@github.com:sudokamikaze/homebrew-rme.git
```

## Nix with Nix-darwin
```
{
  pkgs,
  config,
  lib,
  ...
}: {
  homebrew = {
    taps = [
      "sudokamikaze/rme"
      {
        name = "sudokamikaze/rme";
        clone_target = "git@github.com:sudokamikaze/homebrew-rme";
      }
    ];
    casks = [
      "sudokamikaze/rme/totalmix-fx"
    ];
  };
}

```