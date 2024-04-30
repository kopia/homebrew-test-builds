# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240429.0.193259"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.193259/kopia-20240429.0.193259-macOS-x64.tar.gz"
    sha256 "3f5c112cd8d058d028a343ce33d36af893efac10bf514602302855b4adc61b0b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.193259/kopia-20240429.0.193259-macOS-arm64.tar.gz"
    sha256 "a311f54fb087276ae9a810189ca6da3412e682c9e2b3bf5120706b0fdd11abc6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.193259/kopia-20240429.0.193259-linux-x64.tar.gz"
    sha256 "53fdd6f42fdbdbf0266791995a7bae5b37aca349dba69ef8c6508326569e063b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.193259/kopia-20240429.0.193259-linux-arm.tar.gz"
    sha256 "491a2ec3ec4741062db72e64df9a6b342422aa446d212f33928c67ab6d8e69d6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240429.0.193259/kopia-20240429.0.193259-linux-arm64.tar.gz"
    sha256 "0b96dac8001850fb5f879b2cd322b26e36cf8dcd85466b766bdbdf88039dd940"
  end

  def install
    bin.install "kopia"
  end
end
