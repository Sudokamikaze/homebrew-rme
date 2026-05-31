cask "totalmix-fx" do
  version "2.03"

  url "https://rme-audio.de/downloads/tmfx_#{version.no_dots}_1991_mac.zip"
  sha256 "c1a790ab902f76afd85bd37fa63ae0bdd86bb6554100c696ac0a401edd926dc1"

  name "RME TotalMix FX"
  desc "RME audio mixer for RME audio interfaces"
  homepage "https://rme-audio.de/"

  depends_on :macos

  pkg "TMInstaller_#{version.no_dots}.pkg"

  uninstall quit:    [
              "de.rme-audio.TotalmixFX"
            ],
            pkgutil: "de.rme-audio.TotalmixFX"

  zap trash: [
    "~/Library/Application Support/RME TotalMix FX"
  ]
end
