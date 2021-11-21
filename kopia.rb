# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211120.0.224227"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.224227/kopia-20211120.0.224227-macOS-x64.tar.gz"
    sha256 "b33e6671542f74c68daf4b9912eaee123d47b91c6e28e1ae53bdf5b0c78e5951"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.224227/kopia-20211120.0.224227-macOS-arm64.tar.gz"
    sha256 "ec00a090201f4e7116c77752c31f7725b4152ec0e72c71e38fbeaf79bfa53ef3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.224227/kopia-20211120.0.224227-linux-x64.tar.gz"
    sha256 "acdaf97684886a0a166d33ecdf83f3ea58e717a1a151f74f6793d7078882cdcd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.224227/kopia-20211120.0.224227-linux-arm.tar.gz"
    sha256 "94d6dd281cd1fd6a00a24ac151c2e6fc389022553f1eed435f3b74960f8c75bb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.224227/kopia-20211120.0.224227-linux-arm64.tar.gz"
    sha256 "7079c426f721e91ab4606b24027d8f71cc2ab73ea4f462d624b8fdc5676e51d6"
  end

  def install
    bin.install "kopia"
  end
end
