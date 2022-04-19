# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220419.0.50737"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.50737/kopia-20220419.0.50737-macOS-x64.tar.gz"
    sha256 "fc483dc6be781b5b1ed80677a3909cfa2cb56bd3b68543821a0cbb772fcdb4b4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.50737/kopia-20220419.0.50737-macOS-arm64.tar.gz"
    sha256 "5e61741abf07fe39e7525b4e2a81febf3d474f7a3724caa7f90d2f51cfbf4d31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.50737/kopia-20220419.0.50737-linux-x64.tar.gz"
    sha256 "31ddd12b373da6ee4b1c1ce1faede7c1b3c9a28cc73a7727af37dbcdeb940be5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.50737/kopia-20220419.0.50737-linux-arm.tar.gz"
    sha256 "2b52d4d4e9d387aef4e17e35b3155514ce5ec9b95e74ca06e38aefdb8157fe2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220419.0.50737/kopia-20220419.0.50737-linux-arm64.tar.gz"
    sha256 "25cc836220db9b7097e374ad9aa5175a02d0ed5125e12628ccd688e831907d78"
  end

  def install
    bin.install "kopia"
  end
end
