# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230926.0.22620"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.22620/kopia-20230926.0.22620-macOS-x64.tar.gz"
    sha256 "766b06f8bf193be340322e0db717c527fda8a553a44cc5e25f4e9ffb8f96b5c3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.22620/kopia-20230926.0.22620-macOS-arm64.tar.gz"
    sha256 "3675d1a32f81842dbbd49d059189b87543cda85f612587742d6995db60e414c0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.22620/kopia-20230926.0.22620-linux-x64.tar.gz"
    sha256 "79716973d7d768e8803cb185c45b9bdbb5e160f10af93e58775edb6df5575c90"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.22620/kopia-20230926.0.22620-linux-arm.tar.gz"
    sha256 "c153f24889146aa06b1bc49f06cda982f567a05b15ffa95f9f8d495380b75cc4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230926.0.22620/kopia-20230926.0.22620-linux-arm64.tar.gz"
    sha256 "74c19de9c705c80316a69ada01904a25597f60ffb65f349f51d7b9cf44ad9b09"
  end

  def install
    bin.install "kopia"
  end
end
