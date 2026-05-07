cask "adi2-remote" do
  version "2.1"

  url "https://www.rme-audio.de/downloads/adi2remote_mac.zip"
  sha256 "395db7063d41a63c243aeaa726c9bb34a4ebb23bcd03f89402ce2d2e137a6f88"

  name "RME ADI2 series Remote"
  desc "RME ADI2 remote control application"
  homepage "https://rme-audio.de/"

  depends_on :macos

  pkg "ADI2Remote_#{version.no_dots}.pkg"

  uninstall quit:    [
              "de.rme-audio.ADI-2-Remote"
            ],
            pkgutil: "de.rme-audio.ADI-2-Remote"

  zap trash: [
    "~/Library/Application Support/adi2Remote",
    "~/Library/Preferences/de.rme-audio.ADI-2-Remote.plist",
    "~/Library/Logs/TotalMixFX",
    "~/Library/Caches/com.apple.helpd/Generated/de.rme-audio.adi2remote.help*"
  ]
end