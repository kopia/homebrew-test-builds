# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240206.0.205155"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.205155/kopia-20240206.0.205155-macOS-x64.tar.gz"
    sha256 "d31ea6e0c5cded6d6f01bf3b46cfa9c0f6fd80247abdfc13a3344bcd83006557"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.205155/kopia-20240206.0.205155-macOS-arm64.tar.gz"
    sha256 "12d694d2c3b9c6fe9fb913886bee66198a3c08cbb9be699f187340a099eaa30d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.205155/kopia-20240206.0.205155-linux-x64.tar.gz"
    sha256 "ecd4f104bc529eaa76c339f197e1aa04f9d798f742e0db333365ca395d9177a3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.205155/kopia-20240206.0.205155-linux-arm.tar.gz"
    sha256 "69c4a635ddf65f1a094620f5c25d93022c2c7bfce7d86d692858429db6723b43"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.205155/kopia-20240206.0.205155-linux-arm64.tar.gz"
    sha256 "c3b60da9a07d6d854bc7d03bcadaccb8710f4f1f2f0740dc9fb3e096a56a0292"
  end

  def install
    bin.install "kopia"
  end
end
