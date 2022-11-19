# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221119.0.104130"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.104130/kopia-20221119.0.104130-macOS-x64.tar.gz"
    sha256 "59d1b6301c2ff6faf121af9cbe8476dc5e7f918e1f8d45f80284013900e74f1b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.104130/kopia-20221119.0.104130-macOS-arm64.tar.gz"
    sha256 "b7e2b12898fbd0e47cb0186c17af9c64272ddeee3f06451e7d118da3906cab5e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.104130/kopia-20221119.0.104130-linux-x64.tar.gz"
    sha256 "2f3064db744c312ff915f8c81135d6ee1030beadcd5e9af2ed114a6893dcdc66"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.104130/kopia-20221119.0.104130-linux-arm.tar.gz"
    sha256 "075a37d75ecaf43fc8863f43c0d2dfa73574213229d2c1f9a7dcca10e1651abb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221119.0.104130/kopia-20221119.0.104130-linux-arm64.tar.gz"
    sha256 "991eaaa6d3de071aded3b5cbb617a2ec2ea7836b06db9653e03636ec27dbf778"
  end

  def install
    bin.install "kopia"
  end
end
