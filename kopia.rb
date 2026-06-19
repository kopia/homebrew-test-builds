# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260619.0.12641"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260619.0.12641/kopia-20260619.0.12641-macOS-x64.tar.gz"
    sha256 "9b1cac48ad2a5f452f8087ae3df7a5859bf10002e8ef869925269d2e94bb190e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260619.0.12641/kopia-20260619.0.12641-macOS-arm64.tar.gz"
    sha256 "45a8eb73b45ef46018c9b7f73a763a4a085aadb9f8ab4565580abd5681bd0d79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260619.0.12641/kopia-20260619.0.12641-linux-x64.tar.gz"
    sha256 "217737b3909e81742938e0cee7358724f45eb411bcc4395fa64eb5088a644942"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260619.0.12641/kopia-20260619.0.12641-linux-arm.tar.gz"
    sha256 "8ee2b89bd45ff7ab8db46868739279be8170757690357e950fdef31f05ad9233"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260619.0.12641/kopia-20260619.0.12641-linux-arm64.tar.gz"
    sha256 "9a425e43af8ac5d497ba1fababaa3a47ca1a1e5857bde04c75738c18d06e4f0b"
  end

  def install
    bin.install "kopia"
  end
end
