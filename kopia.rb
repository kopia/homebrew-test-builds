# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231219.0.212515"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.212515/kopia-20231219.0.212515-macOS-x64.tar.gz"
    sha256 "9fc4b84078fb39430610476c3d94dc9c5ca6f5846b79e3a2920850f3daf0162b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.212515/kopia-20231219.0.212515-macOS-arm64.tar.gz"
    sha256 "4c6581fe9aa661f4936b68c191584146ecaa0f0d6526a613e36eab5a28e8700f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.212515/kopia-20231219.0.212515-linux-x64.tar.gz"
    sha256 "3e86765a53de4b0c2a3aa9b7ebf879de6805affa3d5d3e4d5d7221ba86495e09"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.212515/kopia-20231219.0.212515-linux-arm.tar.gz"
    sha256 "fc02e9227f87ffac32a950a191a37b218e4a8a4e0680cd3a395aec6c6bcf5079"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231219.0.212515/kopia-20231219.0.212515-linux-arm64.tar.gz"
    sha256 "d5f3bad8f1b4721c59a7d24b4ca18fbaabd7fcbea5943dac6c0165fc48bd3940"
  end

  def install
    bin.install "kopia"
  end
end
