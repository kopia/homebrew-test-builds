# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250916.0.53616"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.53616/kopia-20250916.0.53616-macOS-x64.tar.gz"
    sha256 "a1a2107e5ab3b0eb43880cd4ee7939a9e8c478b5c687eaa4398d24cfadbae946"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.53616/kopia-20250916.0.53616-macOS-arm64.tar.gz"
    sha256 "465d5469691b66dfa673ad91508d89b63f44e1446c11170c1bb7d87ba4788e8e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.53616/kopia-20250916.0.53616-linux-x64.tar.gz"
    sha256 "8e0e1e8eee925ac223d50fb4f591723cd3de370b0b5d428a7a22d40f4e171598"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.53616/kopia-20250916.0.53616-linux-arm.tar.gz"
    sha256 "3c1813347099bbf5981feba02daacba9c0c9f23927cbfb7dd899a5a087c5d8bb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250916.0.53616/kopia-20250916.0.53616-linux-arm64.tar.gz"
    sha256 "be947470761dad700807d52e8f0c7a44e94fbd957dbee9fc1f2dcca05debcaad"
  end

  def install
    bin.install "kopia"
  end
end
