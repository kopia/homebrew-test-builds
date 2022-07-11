# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220710.0.230646"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.230646/kopia-20220710.0.230646-macOS-x64.tar.gz"
    sha256 "a17c5008f7762e2b32015b023a13edbbce26a1726c1f2b04206c13566f0fea24"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.230646/kopia-20220710.0.230646-macOS-arm64.tar.gz"
    sha256 "47f5e28ad386dc112c1f9e7825b866ec37504ee0531e67526a0f3cc0e4a1dba5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.230646/kopia-20220710.0.230646-linux-x64.tar.gz"
    sha256 "57f740994fe80933733d0eefd61f31ca04aa6b959bfc398cc4b9295b38ae1ddd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.230646/kopia-20220710.0.230646-linux-arm.tar.gz"
    sha256 "2fc5436264fb6f9ee132d6f7b70244e841efe2665341b36885059b181c5d9e31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.230646/kopia-20220710.0.230646-linux-arm64.tar.gz"
    sha256 "992b21acca2dc84e47a67f5dadfbe4922de0a7ff19895dc94dee3b6d1d7bc2b3"
  end

  def install
    bin.install "kopia"
  end
end
