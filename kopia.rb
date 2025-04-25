# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250425.0.214708"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250425.0.214708/kopia-20250425.0.214708-macOS-x64.tar.gz"
    sha256 "66b023ff9ba181ce527be5fe3d1ef347557674e6ddcb41500f58202ca935d1b5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250425.0.214708/kopia-20250425.0.214708-macOS-arm64.tar.gz"
    sha256 "60ddfe1bacafc03686135f289fc8a1847319dae3481f3c8d951b8ba6c9dabee9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250425.0.214708/kopia-20250425.0.214708-linux-x64.tar.gz"
    sha256 "4605d222429d8d4b7d5e54428d9d3fcad8cbd5647e3d8e2d8cde781759f9649d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250425.0.214708/kopia-20250425.0.214708-linux-arm.tar.gz"
    sha256 "418e0a91c16904153e62b52c54a3a6294249cef94376b44763a7eb26608c00fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250425.0.214708/kopia-20250425.0.214708-linux-arm64.tar.gz"
    sha256 "753300ae2513e3200e02654f76ba7955e234430c23bdac70967fba5f2094399e"
  end

  def install
    bin.install "kopia"
  end
end
