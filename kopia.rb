# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230330.0.13228"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230330.0.13228/kopia-20230330.0.13228-macOS-x64.tar.gz"
    sha256 "cf6ddd5b8bcb1ecfed8e9e3d944acfb2d7ec005312cdc9801fa5f2a346dcf3d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230330.0.13228/kopia-20230330.0.13228-macOS-arm64.tar.gz"
    sha256 "24efe95f517cbf3e97aaae30d456de1b10eff4d0b2155f056be791b5130c1e46"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230330.0.13228/kopia-20230330.0.13228-linux-x64.tar.gz"
    sha256 "94855c675c17fa23fed69f3601087d7cc25cce7989283542aac98669274c88cf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230330.0.13228/kopia-20230330.0.13228-linux-arm.tar.gz"
    sha256 "c6ad5e1e627facddc9ff72baa98e920422aa4d2a850bf34d019a91bdf0e5565b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230330.0.13228/kopia-20230330.0.13228-linux-arm64.tar.gz"
    sha256 "1ab61ef585bb5d814a65904fed82936a55c074fe16050864bd98a3ae1001c4de"
  end

  def install
    bin.install "kopia"
  end
end
