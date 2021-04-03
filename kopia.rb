# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210402.0.221844"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.221844/kopia-20210402.0.221844-macOS-x64.tar.gz"
    sha256 "1c79cda763aa6517eee543f2e097da8c057ee3fb75b0ce4f787df0e34c0c7804"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.221844/kopia-20210402.0.221844-macOS-arm64.tar.gz"
    sha256 "f2316c14940c18af5c0b622697842a43b29ce650b4484f8378fb4d8d614519dc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.221844/kopia-20210402.0.221844-linux-x64.tar.gz"
    sha256 "1152a4514d33b792b287f4baa7da3a0bd8f7793ff68d89eecb6b58b2d39fa0ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.221844/kopia-20210402.0.221844-linux-arm.tar.gz"
    sha256 "e728b6e9d5a7549899add1e58618eedee94e1ebd461912ff610f57496046cc13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.221844/kopia-20210402.0.221844-linux-arm64.tar.gz"
    sha256 "52cbb1f5f0ca77c414ff2b1359f1b487e05911957f8420d8237d3ad6c92bd317"
  end

  def install
    bin.install "kopia"
  end
end
