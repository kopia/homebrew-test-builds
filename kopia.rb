# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240610.0.233304"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240610.0.233304/kopia-20240610.0.233304-macOS-x64.tar.gz"
    sha256 "4dee68f0ba7c1bc212f58795da3a809789ba710d1b174e9be83cbfafd2320008"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240610.0.233304/kopia-20240610.0.233304-macOS-arm64.tar.gz"
    sha256 "f708731478df700aa5f156dff845334a1810b1ceea9375284fd763928162193e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240610.0.233304/kopia-20240610.0.233304-linux-x64.tar.gz"
    sha256 "d033e876ad3abb18c78418e7dad798263327deaa806c8db91ad4f153c20e4973"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240610.0.233304/kopia-20240610.0.233304-linux-arm.tar.gz"
    sha256 "dcecc03d0db5cc754e60e94a8138605e44be8278d2ed4a3d77ac46eb00114aeb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240610.0.233304/kopia-20240610.0.233304-linux-arm64.tar.gz"
    sha256 "40c80c4127b1dc5e9f7f3999e6db947e30d0c9c0a593e41b0b9ec4094b2bda69"
  end

  def install
    bin.install "kopia"
  end
end
