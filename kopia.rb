# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250930.0.14517"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250930.0.14517/kopia-20250930.0.14517-macOS-x64.tar.gz"
    sha256 "43e4c0a1a86880b1e6500d5213a857a59b58c631a16fab80dc4f517943a4cb24"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250930.0.14517/kopia-20250930.0.14517-macOS-arm64.tar.gz"
    sha256 "ab1e26983fa504716b27bcaf265dbedd11d4dff8ab6f080b35e38e8952096f47"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250930.0.14517/kopia-20250930.0.14517-linux-x64.tar.gz"
    sha256 "e5c6ee397484154c66a648c1768545a02d433dd143b5723588c30ea7aac44222"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250930.0.14517/kopia-20250930.0.14517-linux-arm.tar.gz"
    sha256 "bc31f7397bf264df504797c6504ed0fbc8fc0389f359ab46e68f479fb24a3080"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250930.0.14517/kopia-20250930.0.14517-linux-arm64.tar.gz"
    sha256 "01afe13ef06dffe3310ebb8a07d482b073a0cc03a67b5e4f4d2770fa95d94229"
  end

  def install
    bin.install "kopia"
  end
end
