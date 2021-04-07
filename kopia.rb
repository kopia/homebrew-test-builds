# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.190334"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190334/kopia-20210406.0.190334-macOS-x64.tar.gz"
    sha256 "e60e4ddaf36799b37b6dc04661c3fc41f2e46f8bbd89486747d9971d2914608d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190334/kopia-20210406.0.190334-macOS-arm64.tar.gz"
    sha256 "3fbbf5d8b859163504765b2f8065db3dcfef337c12d7377be3730d403db70c5c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190334/kopia-20210406.0.190334-linux-x64.tar.gz"
    sha256 "e2551a6681f2035c624b10a70449d821029b2bb8c17dbe91ead13f64606aabc6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190334/kopia-20210406.0.190334-linux-arm.tar.gz"
    sha256 "7ad789b1cd0fe81e9130c290a546282892466123a314911774ed512d22b23189"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.190334/kopia-20210406.0.190334-linux-arm64.tar.gz"
    sha256 "00e9028d14398187cb2e51def9ec51c321a89ca01b1644843e7eadc105c8aef5"
  end

  def install
    bin.install "kopia"
  end
end
