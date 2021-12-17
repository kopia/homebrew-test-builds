# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211217.0.132634"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211217.0.132634/kopia-20211217.0.132634-macOS-x64.tar.gz"
    sha256 "52feeb8eabff28b1573eddaa803cfd7d588243be67725d7db108487ce7437931"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211217.0.132634/kopia-20211217.0.132634-macOS-arm64.tar.gz"
    sha256 "218fb38b40e209e9d22d0eb1f4036af4a889a542d6340d66ea08a8886ed4c66b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211217.0.132634/kopia-20211217.0.132634-linux-x64.tar.gz"
    sha256 "dc2ddc6906e5e27e5817fd11d8a77addf4bee2930f945d33dd0d35b479539310"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211217.0.132634/kopia-20211217.0.132634-linux-arm.tar.gz"
    sha256 "23c133b4cd642f456e1ba30fdc2d5ce1f99bc62b3165b719838c63c96874627e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211217.0.132634/kopia-20211217.0.132634-linux-arm64.tar.gz"
    sha256 "0c37c3ad03b429c0a6151a51efbe1d5d8fecfcb6d98b7db343dbd2805248b14d"
  end

  def install
    bin.install "kopia"
  end
end
