# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211001.0.225917"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225917/kopia-20211001.0.225917-macOS-x64.tar.gz"
    sha256 "09d481c552bdf31d1a36702f5cecfb06c643936c0c3d70f2aac47bb511ad725a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225917/kopia-20211001.0.225917-macOS-arm64.tar.gz"
    sha256 "b71056333caf9e56be7cda7584d799c5863d1105a5730f5e35a6f308abdbe3ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225917/kopia-20211001.0.225917-linux-x64.tar.gz"
    sha256 "4224b5d4db69371a0b99a579dbc33b8aa8e5c1f34465c3cc4052ea0ab0a268df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225917/kopia-20211001.0.225917-linux-arm.tar.gz"
    sha256 "76eda56e8dc6cacf783c2a3742878340de1585e3cea28d41c0229463318c5bc0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211001.0.225917/kopia-20211001.0.225917-linux-arm64.tar.gz"
    sha256 "4569dd0a804c3b93e0863ba6d149a2e882fc1e2559d1ffc84f5d4a26b571b2c3"
  end

  def install
    bin.install "kopia"
  end
end
