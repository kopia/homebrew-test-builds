# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220908.0.73956"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.73956/kopia-20220908.0.73956-macOS-x64.tar.gz"
    sha256 "2554ec7beb8865b2500ce71875645f6f81fe96f8fa1c412ec9070404b24228dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.73956/kopia-20220908.0.73956-macOS-arm64.tar.gz"
    sha256 "9b2c724a78d772390969399ca894f0738594f9bc0bd64ae9681360d3d303909e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.73956/kopia-20220908.0.73956-linux-x64.tar.gz"
    sha256 "ffbd2f282a3c939f33195052e3e2338bec11c2f8deaf61aec879942b3fc1761d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.73956/kopia-20220908.0.73956-linux-arm.tar.gz"
    sha256 "eaa3ef378094840294a552240221aa313d830f01c2f443807d23c811c7d17e4c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.73956/kopia-20220908.0.73956-linux-arm64.tar.gz"
    sha256 "551434b54788a2b62aee07dfc09cc06cf9a02ea5647dbfb04b7e40d5edfa6a81"
  end

  def install
    bin.install "kopia"
  end
end
