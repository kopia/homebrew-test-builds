# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210601.0.201234"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210601.0.201234/kopia-20210601.0.201234-macOS-x64.tar.gz"
    sha256 "4dbff8c677152b1ce00911d9152a56a52aa9467adf8fc1f49f42e788ff84283d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210601.0.201234/kopia-20210601.0.201234-macOS-arm64.tar.gz"
    sha256 "80bbf1d6cb945d3b5aae583643bbb0ef448ef82f4d6333b5e2f4d84419bbfb8a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210601.0.201234/kopia-20210601.0.201234-linux-x64.tar.gz"
    sha256 "ed1d5fff71b917e6abf2e90e450d45f3c479e984d357dda8e6bde3a046fbc21f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210601.0.201234/kopia-20210601.0.201234-linux-arm.tar.gz"
    sha256 "82be005374bf50b159db94ba2a45dae8962d759fa2304f7dad0388bdeec5c55d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210601.0.201234/kopia-20210601.0.201234-linux-arm64.tar.gz"
    sha256 "87660f59f6dbae1238691924d5290033c1716cef8198b76bd915bb3aba0a8e54"
  end

  def install
    bin.install "kopia"
  end
end
