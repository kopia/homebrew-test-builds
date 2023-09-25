# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230924.0.182906"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230924.0.182906/kopia-20230924.0.182906-macOS-x64.tar.gz"
    sha256 "e092212f0e322c12594d222be6c0558cf74d9a0868e9e5f9f9f29d18aa3e16b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230924.0.182906/kopia-20230924.0.182906-macOS-arm64.tar.gz"
    sha256 "beed9b5bafd50a6197a63c86a6ee12f87267050bad44ba07607a4ef18bdac600"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230924.0.182906/kopia-20230924.0.182906-linux-x64.tar.gz"
    sha256 "c154278d5f30c365afaa040d16e6b4a063157454f227b082238ba7a0a2f6166d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230924.0.182906/kopia-20230924.0.182906-linux-arm.tar.gz"
    sha256 "e865ad020daaf800b15c6079745d1dd291932c53d820467c23bf99e39dcf6a12"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230924.0.182906/kopia-20230924.0.182906-linux-arm64.tar.gz"
    sha256 "b33bae2e058bad45788858ce21d6c97e66427aca9e832f708e9459750e4699f9"
  end

  def install
    bin.install "kopia"
  end
end
