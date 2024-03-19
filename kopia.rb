# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240318.0.225816"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.225816/kopia-20240318.0.225816-macOS-x64.tar.gz"
    sha256 "56b53dee746b9807d71ebeddefd8373336ffe95bf043f160f3a4337af111b697"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.225816/kopia-20240318.0.225816-macOS-arm64.tar.gz"
    sha256 "98db106322eea498e6510694c490d5b696ff5f02dc9208755a14f0524ff98ac4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.225816/kopia-20240318.0.225816-linux-x64.tar.gz"
    sha256 "4651f54357ff42b7cc2d52963a06e8eced48a36000cb6e08e1fa42371024fea5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.225816/kopia-20240318.0.225816-linux-arm.tar.gz"
    sha256 "44dcd220cf95474d8986820d4cd4b82493901b8bad1fcfaa946e6145d4b91c1c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240318.0.225816/kopia-20240318.0.225816-linux-arm64.tar.gz"
    sha256 "c93bd5b571a6ad74900e78cf84053046acc8aec81b7ba4add53889aa7d826e9e"
  end

  def install
    bin.install "kopia"
  end
end
