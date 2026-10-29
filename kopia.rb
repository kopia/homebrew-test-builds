# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261029.0.45805"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261029.0.45805/kopia-20261029.0.45805-macOS-x64.tar.gz"
    sha256 "47ad3a0e124d4b99f3ad43b1230f1054145bc99abf411a66a1df6bd8fcef4057"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261029.0.45805/kopia-20261029.0.45805-macOS-arm64.tar.gz"
    sha256 "29c5226de6d1af19bc7538bdda62ca2fcebe5f4009e0eef541f3a8f1edf30d3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261029.0.45805/kopia-20261029.0.45805-linux-x64.tar.gz"
    sha256 "0b639677549cbbb8476015b90526af416a0db5ea5638a1b8c9501ebb5ece88a3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261029.0.45805/kopia-20261029.0.45805-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261029.0.45805/kopia-20261029.0.45805-linux-arm64.tar.gz"
    sha256 "fb2c5011d6617beb07b3049635087b0c24a7ea89b02ec6f04c0e293b540318cd"
  end

  def install
    bin.install "kopia"
  end
end
