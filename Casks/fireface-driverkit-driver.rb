cask "fireface-driverkit-driver" do
  version "4.27"

  url "https://rme-audio.de/downloads/driver_usbdk_mac_427.zip"
  sha256 "bb5c6cbafc4d974da5fc4b7ccfdf92a23d3c60ab644f0f046980dc305390d787"

  name "RME FireFace DriverKit Driver"
  desc "RME DriverKit based driver for Babyface Pro, Babyface Pro FS, Digiface AES, Digiface AVB, Digiface Dante, Digiface Ravenna, Digiface USB, Fireface 802 FS, Fireface 802 FS AE, Fireface UCX II, Fireface UFX II, Fireface UFX III, Fireface UFX+, MADIface Pro, MADIface USB, MADIface XT, MADIface XT II, USB.IO"
  homepage "https://rme-audio.de/"

  pkg "Fireface USB DK 427.pkg"

  uninstall pkgutil: "de.rme-audio.firefaceusbdkdriver.installer"

  zap trash: [
    "~/Library/Preferences/de.rme-audio.dkusbsettings.plist"
  ]
  caveats <<~EOS
    The RME Fireface driver requires a reboot to take effect.
    After installation, reboot your Mac
  EOS
end
