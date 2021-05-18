# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210517.0.211243"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211243/kopia-20210517.0.211243-macOS-x64.tar.gz"
    sha256 "4d8506f5551150de1ac993218d430383769a377926889291e3c8c364fbd4c686"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211243/kopia-20210517.0.211243-macOS-arm64.tar.gz"
    sha256 "af0158b37c0da865b4ece76634bdce6d34b7671e05dd773adaeab85566280b61"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211243/kopia-20210517.0.211243-linux-x64.tar.gz"
    sha256 "c0b8c2e62d34950ca0d100a3ce3120db11050fb4bc0be28067c34ca9ac13b3a2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211243/kopia-20210517.0.211243-linux-arm.tar.gz"
    sha256 "5ba21753a220a1e112a8efe183def506bd4f5e6f31adb0eba8deb03b7aace741"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210517.0.211243/kopia-20210517.0.211243-linux-arm64.tar.gz"
    sha256 "8a3fc7224f7e610ee74dce2dc87fb66a79791894ad477d28f045fe7dce704cf8"
  end

  def install
    bin.install "kopia"
  end
end
