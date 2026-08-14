cask "fireface-driverkit-driver" do
  version "4.30"

  url "https://rme-audio.de/downloads/driver_usbdk_mac_#{version.no_dots}.zip"
  sha256 "90b9e2dee606cf208683e034998112da5cfca5430b4f558f6ed6076c4ef52dca"

  name "RME FireFace DriverKit Driver"
  desc "RME DriverKit based driver for Babyface Pro, Babyface Pro FS, Digiface AES, Digiface AVB, Digiface Dante, Digiface Ravenna, Digiface USB, Fireface 802 FS, Fireface 802 FS AE, Fireface UCX II, Fireface UFX II, Fireface UFX III, Fireface UFX+, MADIface Pro, MADIface USB, MADIface XT, MADIface XT II, USB.IO"
  homepage "https://rme-audio.de/"

  depends_on :macos

  pkg "Fireface USB DK #{version.no_dots}.pkg"

  uninstall pkgutil: "de.rme-audio.firefaceusbdkdriver.installer"

  zap trash: [
    "~/Library/Preferences/de.rme-audio.dkusbsettings.plist",
    "~/Library/Caches/com.apple.helpd/Generated/de.rme-audio.dkusbsettings.help"
  ]
  caveats <<~EOS
    The RME Fireface driver requires a reboot to take effect.
    After installation, reboot your Mac
  EOS
end
