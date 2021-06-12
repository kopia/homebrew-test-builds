# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210612.0.65349"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.65349/kopia-20210612.0.65349-macOS-x64.tar.gz"
    sha256 "007444bec11caca6200cdb5c59412a09017caefc08e6935154f991e53d3377fe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.65349/kopia-20210612.0.65349-macOS-arm64.tar.gz"
    sha256 "61acdd8fed587e96861bd215700c012bb5db41dd46aedd70e6b0958509ce67da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.65349/kopia-20210612.0.65349-linux-x64.tar.gz"
    sha256 "f7edd647d32282645c7ec8f4f5a8ff269a199f3f227f5fb1243a18c1a3c8f30d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.65349/kopia-20210612.0.65349-linux-arm.tar.gz"
    sha256 "d1d85e3aa1366061afee2965bacc4a280036f62def3b7b36116be90d295123db"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210612.0.65349/kopia-20210612.0.65349-linux-arm64.tar.gz"
    sha256 "0384efa84938a9a4616dd2d00b735f072f05b4eb525ecd48aa296bfa9f9cd661"
  end

  def install
    bin.install "kopia"
  end
end
