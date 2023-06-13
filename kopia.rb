# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230612.0.203455"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230612.0.203455/kopia-20230612.0.203455-macOS-x64.tar.gz"
    sha256 "c9ff522b0219e7cee67738f63dc6f1d11ef2d1df77b37a3208a79876c20c8bfb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230612.0.203455/kopia-20230612.0.203455-macOS-arm64.tar.gz"
    sha256 "581c9e0da874ffc9379d90aef449ac7e6e8b18cb153fa1bc84433c4cc789a879"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230612.0.203455/kopia-20230612.0.203455-linux-x64.tar.gz"
    sha256 "ea3c5827fced2082fda47a9f4b4c8774bd7cc1e5a8ec2e2202ce7da0325f5c40"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230612.0.203455/kopia-20230612.0.203455-linux-arm.tar.gz"
    sha256 "b4e85f1c63ca25a033836cf110785ff24fb31a139cb35a575c985f22c73ee071"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230612.0.203455/kopia-20230612.0.203455-linux-arm64.tar.gz"
    sha256 "ae94be0044bb0f9f6a1a350d395962abf2d3122d5d9f0d78ca029234fbbb0a8d"
  end

  def install
    bin.install "kopia"
  end
end
