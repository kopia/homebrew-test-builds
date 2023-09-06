# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230905.0.192546"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230905.0.192546/kopia-20230905.0.192546-macOS-x64.tar.gz"
    sha256 "7ba8eeea398dee2433d169cab7985380e749782af56d6cdbc7d0851f566f4f39"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230905.0.192546/kopia-20230905.0.192546-macOS-arm64.tar.gz"
    sha256 "10b16f46b86f429962e352cdc9654d02db35f85ac1e248c9fcd9e3f38cce5372"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230905.0.192546/kopia-20230905.0.192546-linux-x64.tar.gz"
    sha256 "271564bae3f185f46ee2dff45f04779ad9d333ebd65822361e0fe3806e09102e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230905.0.192546/kopia-20230905.0.192546-linux-arm.tar.gz"
    sha256 "074bc637bf7bfa22eb669ff4e7dd35d1d8ae216d0c3d5d4339c09e27a4a28577"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230905.0.192546/kopia-20230905.0.192546-linux-arm64.tar.gz"
    sha256 "7b96c8d674664965ea1838fbddff48859aca75081eeeb66bc0f6e317dc7436af"
  end

  def install
    bin.install "kopia"
  end
end
