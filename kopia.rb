# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211006.0.83910"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.83910/kopia-20211006.0.83910-macOS-x64.tar.gz"
    sha256 "15ace116240b717b47dbbe4af88fa1d35fffcffb3d9eedf033d28787e2ebf0cd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.83910/kopia-20211006.0.83910-macOS-arm64.tar.gz"
    sha256 "7d23eec32c853dc4fcecef09296577ce8431911e831f34ab1935cc0b5f5b520c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.83910/kopia-20211006.0.83910-linux-x64.tar.gz"
    sha256 "00192ce2f0733947b9a3c07be5cf7262e390789174c4673493844a2d32214a90"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.83910/kopia-20211006.0.83910-linux-arm.tar.gz"
    sha256 "63038d2d004cc0e33c74fc2fb5dbb23c7f67d045e73a9cef0c43b1485c74a9e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211006.0.83910/kopia-20211006.0.83910-linux-arm64.tar.gz"
    sha256 "ed446ea779bc11fc7a60944feec577f5df5880baedebb4f6e15f09388efcb605"
  end

  def install
    bin.install "kopia"
  end
end
