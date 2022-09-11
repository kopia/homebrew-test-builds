# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220910.0.193033"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.193033/kopia-20220910.0.193033-macOS-x64.tar.gz"
    sha256 "69d75485aabc05bc8c0b3cf4fd0ca354fd8f8d27ecfe361de94fdf6e6b0d1ab4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.193033/kopia-20220910.0.193033-macOS-arm64.tar.gz"
    sha256 "e46b9ade4bbd0ca3e24a26bdeffe4c4d3ab269c0e3c170614c316cb5e731011b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.193033/kopia-20220910.0.193033-linux-x64.tar.gz"
    sha256 "f3c2d2eec86b8f3dca9e663ebc68073a43027334eecbd3ba95df2aa277e1d801"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.193033/kopia-20220910.0.193033-linux-arm.tar.gz"
    sha256 "8506c661229c84b1eff16d4ec66b646db06af80895afe113c8ec19d43853ef00"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220910.0.193033/kopia-20220910.0.193033-linux-arm64.tar.gz"
    sha256 "d2f60b89db3d8ad2b26ae9d3ab1dfdcb66c6a7bc008fffc5f20d609922942e3b"
  end

  def install
    bin.install "kopia"
  end
end
