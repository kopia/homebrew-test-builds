# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260906.0.220849"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.220849/kopia-20260906.0.220849-macOS-x64.tar.gz"
    sha256 "c859e3f445ed8c7157a70cdd8e94a92c7497a707b9b524613c82471df3c84b4b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.220849/kopia-20260906.0.220849-macOS-arm64.tar.gz"
    sha256 "21106453886bddef76f82eb6b2106e8307591a196baec6390dca3f3b1140efeb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.220849/kopia-20260906.0.220849-linux-x64.tar.gz"
    sha256 "74a8410551a72bb04700a9e1790e97b0bf70ac16456b0226bd3e9ff6928ea645"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.220849/kopia-20260906.0.220849-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260906.0.220849/kopia-20260906.0.220849-linux-arm64.tar.gz"
    sha256 "f1bfa2d21fe0a2015e8892c23c3e30685e2a564a6a4894bd400bf295701362fa"
  end

  def install
    bin.install "kopia"
  end
end
