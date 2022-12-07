# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221207.0.32629"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221207.0.32629/kopia-20221207.0.32629-macOS-x64.tar.gz"
    sha256 "82a43764791c848745c3ac569a2d805ce3180bc817745de22b6607202cb3181e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221207.0.32629/kopia-20221207.0.32629-macOS-arm64.tar.gz"
    sha256 "1e1a92e71c14854a9814f2470b23d6cfd1a3b25b0676e0d8f7acb5a7b89e80dc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221207.0.32629/kopia-20221207.0.32629-linux-x64.tar.gz"
    sha256 "d1bbc8e9d4dd0e04f20faf7928023ab9d22b6c47fdafb79b3906c3d077057e78"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221207.0.32629/kopia-20221207.0.32629-linux-arm.tar.gz"
    sha256 "01ab58859ebdac294df27f285dbcc393e75a64bfc1f4e36717f2c24fde7f03c3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221207.0.32629/kopia-20221207.0.32629-linux-arm64.tar.gz"
    sha256 "679c52d0d29d939d00281a20b88cbdb5b7cb77a62c2ded41f1c199fae9c9cb86"
  end

  def install
    bin.install "kopia"
  end
end
