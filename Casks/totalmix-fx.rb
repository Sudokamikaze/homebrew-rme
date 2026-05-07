cask "totalmix-fx" do
  version "2.01"

  url "https://rme-audio.de/downloads/tmfx_201_1991_mac.zip"
  sha256 "04f191ad3a307c57ca92a49157533ff165a352396aed34d2ffcaaab5dbc51065"

  name "RME TotalMix FX"
  desc "RME audio mixer for RME audio interfaces"
  homepage "https://rme-audio.de/"

  pkg "TMInstaller_201.pkg"

  uninstall pkgutil: "de.rme-audio.TotalmixFX"

  zap trash: [
    "~/Library/Application Support/RME TotalMix FX"
  ]
end
