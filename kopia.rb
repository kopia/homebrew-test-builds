# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250122.0.201557"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.201557/kopia-20250122.0.201557-macOS-x64.tar.gz"
    sha256 "2a9ff123f3a6ddc3f0e02e2f3701f2463539524bc365e55229f64d85ba434e9b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.201557/kopia-20250122.0.201557-macOS-arm64.tar.gz"
    sha256 "3df549872c60f6422357b721c4c161e940a82e3c14faa993deb90ed9ebc6e6af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.201557/kopia-20250122.0.201557-linux-x64.tar.gz"
    sha256 "cffa35975e2e4db031203d25aef0de56ba336dfcb7ab75ca0e85bdd3b1264c7b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.201557/kopia-20250122.0.201557-linux-arm.tar.gz"
    sha256 "e2590c81b45d99c43c15ebec3931fc019bb5b3ebd78da66f559af2dd84797fac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250122.0.201557/kopia-20250122.0.201557-linux-arm64.tar.gz"
    sha256 "54902d4954d644fc6c8365296a3f463825d48c38ec395fcf8b25fe79ec8127c5"
  end

  def install
    bin.install "kopia"
  end
end
