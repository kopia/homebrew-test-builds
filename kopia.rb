# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210802.0.210854"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.210854/kopia-20210802.0.210854-macOS-x64.tar.gz"
    sha256 "287ff59ea8c1396c759d2c27a0a76de945b7672eb20af8f1df218dc063a0e443"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.210854/kopia-20210802.0.210854-macOS-arm64.tar.gz"
    sha256 "889e9260769d444acea093f045a148cb84a88bce05983ef7ee3d8043aa62e0cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.210854/kopia-20210802.0.210854-linux-x64.tar.gz"
    sha256 "042529927dd124f138af6814930d6df175efdfcd94922e0e188c00cd7fd407c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.210854/kopia-20210802.0.210854-linux-arm.tar.gz"
    sha256 "9dd1b9c59de8f623feb65940ea0a09e967546ab181fd1d7d0276da38a5cb4c79"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210802.0.210854/kopia-20210802.0.210854-linux-arm64.tar.gz"
    sha256 "baa5ec79afdb8243f47cc2ee1bc9ac85025a1d373c0e63597e758e0393f312ec"
  end

  def install
    bin.install "kopia"
  end
end
