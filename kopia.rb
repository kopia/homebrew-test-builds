# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.212419"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.212419/kopia-20210412.0.212419-macOS-x64.tar.gz"
    sha256 "503e2aa71412552e6b5fca2331d53ba27f9d7a06410fb1a1f30ede3b901441e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.212419/kopia-20210412.0.212419-macOS-arm64.tar.gz"
    sha256 "f2f4eb594bc5e6bcb7d459a66244404eb7967ca652f672624fe47de1c9543365"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.212419/kopia-20210412.0.212419-linux-x64.tar.gz"
    sha256 "db269db1d0060eaccd066b4308d1f55f9b2b40a9554ce439924b349945cefbee"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.212419/kopia-20210412.0.212419-linux-arm.tar.gz"
    sha256 "f6e3f01aa8950c0da4195782ee9fe06b38115cc09e45589b45058290a81fa823"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.212419/kopia-20210412.0.212419-linux-arm64.tar.gz"
    sha256 "7000a8bea19a2ae5fb74f20ade7708c4d1674e31a6345608f1d5ee62520311e0"
  end

  def install
    bin.install "kopia"
  end
end
