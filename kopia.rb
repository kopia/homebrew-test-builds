# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261014.0.221659"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.221659/kopia-20261014.0.221659-macOS-x64.tar.gz"
    sha256 "e10b5ee442c88cff0ad252ae500d6b2e3d91d75038fc3dd042b8d6c932f1d738"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.221659/kopia-20261014.0.221659-macOS-arm64.tar.gz"
    sha256 "0189e635ee4050ceedcf2b0f1a1f1b5fccc9827f8c716cd33cbefe9205114183"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.221659/kopia-20261014.0.221659-linux-x64.tar.gz"
    sha256 "42500077c1dd8a91719cdf743e7158f89aa471e0186bd9817989427355c33f17"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.221659/kopia-20261014.0.221659-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261014.0.221659/kopia-20261014.0.221659-linux-arm64.tar.gz"
    sha256 "6c1289d154d34fe42bfaf477ddb50e572aae50dffc6f01f856077a9f961dd7d4"
  end

  def install
    bin.install "kopia"
  end
end
