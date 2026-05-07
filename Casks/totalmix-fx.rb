cask "totalmix-fx" do
  version "2.01"

  url "https://rme-audio.de/downloads/tmfx_201_1991_mac.zip"
  sha256 "04f191ad3a307c57ca92a49157533ff165a352396aed34d2ffcaaab5dbc51065"

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
