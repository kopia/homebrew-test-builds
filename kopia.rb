# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261002.0.211547"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261002.0.211547/kopia-20261002.0.211547-macOS-x64.tar.gz"
    sha256 "28f0cc29a1bc0de96c7ecd71df5cd5b50313233549283f33287d36dfedd0c5e6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261002.0.211547/kopia-20261002.0.211547-macOS-arm64.tar.gz"
    sha256 "a2aa274cb1d5ef38b8463c17a48bab4ba442ee43430955ad9aa0fb10cf0d2843"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261002.0.211547/kopia-20261002.0.211547-linux-x64.tar.gz"
    sha256 "47107c28a1a045d3934de2e676d286dac58f8fdde1e67d8c14efaa4856ed098d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261002.0.211547/kopia-20261002.0.211547-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261002.0.211547/kopia-20261002.0.211547-linux-arm64.tar.gz"
    sha256 "8cea2d423c7f3945165896af45863611a4b65e901f916c494baf3ac31b66ddc4"
  end

  def install
    bin.install "kopia"
  end
end
