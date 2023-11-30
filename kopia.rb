# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231129.0.212618"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231129.0.212618/kopia-20231129.0.212618-macOS-x64.tar.gz"
    sha256 "c14d7fbc4ea133e4d41698cd78ed75cadb04fb9d6c1ab06cc8f6d00d4a18dc94"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231129.0.212618/kopia-20231129.0.212618-macOS-arm64.tar.gz"
    sha256 "aed18e37adab7590848e984c22f24ecd3af79e8a63f997a02e6e6b89321edfb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231129.0.212618/kopia-20231129.0.212618-linux-x64.tar.gz"
    sha256 "afeb383819512e31424827e24925258b8bafdf85e61d9b7c93968ff8c520d0be"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231129.0.212618/kopia-20231129.0.212618-linux-arm.tar.gz"
    sha256 "d43601e301cfea09ebc4442d4c591c45a8b86f01b957e0b264f0c79bfb6ce774"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231129.0.212618/kopia-20231129.0.212618-linux-arm64.tar.gz"
    sha256 "0b7e619caccf604ad071b5276bece80240e71b784cb2f475ec900a75ef8a8ff8"
  end

  def install
    bin.install "kopia"
  end
end
