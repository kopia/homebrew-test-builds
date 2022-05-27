# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220527.0.32410"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220527.0.32410/kopia-20220527.0.32410-macOS-x64.tar.gz"
    sha256 "ae3f650f17aa60b553f047676da2373eaad1c4227d082b2586da5923bc0e5d40"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220527.0.32410/kopia-20220527.0.32410-macOS-arm64.tar.gz"
    sha256 "f8fec5b2ecba207c69af57e567c03da0ab5b43008a405eaf455941f7cac75131"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220527.0.32410/kopia-20220527.0.32410-linux-x64.tar.gz"
    sha256 "c690676dad3badfa6a81540e7d4328b15222688b6c01f4d30d3b165a0f3f4250"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220527.0.32410/kopia-20220527.0.32410-linux-arm.tar.gz"
    sha256 "0ff9b2986fae42402c9c1430156b73b609c1ab577a4fb0f5c1630ac648a06a25"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220527.0.32410/kopia-20220527.0.32410-linux-arm64.tar.gz"
    sha256 "2715ff4c3422b02d0f523ebe3c1f9dae56bc57122b08342a0a1e50bc38740c75"
  end

  def install
    bin.install "kopia"
  end
end
