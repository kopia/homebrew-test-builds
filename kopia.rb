# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250911.0.181454"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.181454/kopia-20250911.0.181454-macOS-x64.tar.gz"
    sha256 "2e75f078c1874028bb3b30637b4859105abb8f07084cc201d3eb67664226e993"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.181454/kopia-20250911.0.181454-macOS-arm64.tar.gz"
    sha256 "7d3654ad92ab395b58e58dd04fb9a733a77c2c3392f1b12b7e53cf4f66563515"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.181454/kopia-20250911.0.181454-linux-x64.tar.gz"
    sha256 "ed87f6636beac6579e1a3e57b6a37a90b901e18aba0bfa8bf8857c28d0bd7863"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.181454/kopia-20250911.0.181454-linux-arm.tar.gz"
    sha256 "4e4a967f22b22f8bcc0458a9f6b0bb8de5bbd75957840956cc19c2958be80300"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.181454/kopia-20250911.0.181454-linux-arm64.tar.gz"
    sha256 "9c3d1b0c69ba42b205e1c30d750e076df4723747f9e9edb9086839ad1167a502"
  end

  def install
    bin.install "kopia"
  end
end
