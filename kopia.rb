# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261020.0.33011"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.33011/kopia-20261020.0.33011-macOS-x64.tar.gz"
    sha256 "d9bf95a365a6d4ea061c0f868f6c49e6b3ccfa51a0d1f7a0b9b3726676fbe68a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.33011/kopia-20261020.0.33011-macOS-arm64.tar.gz"
    sha256 "58bd412480a5b73741adb2b73be1c1e3bec58ee6df94a6885f486a28d90c831f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.33011/kopia-20261020.0.33011-linux-x64.tar.gz"
    sha256 "a77933beaad3bd465aaff34656361de48ca370e210285d1b8eb7022502f5365e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.33011/kopia-20261020.0.33011-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261020.0.33011/kopia-20261020.0.33011-linux-arm64.tar.gz"
    sha256 "4bc0f92f3f078be8043273de6946582559d9ceea30478957559c21259b431760"
  end

  def install
    bin.install "kopia"
  end
end
