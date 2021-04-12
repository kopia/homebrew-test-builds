# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210412.0.114047"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.114047/kopia-20210412.0.114047-macOS-x64.tar.gz"
    sha256 "51487f4df70b7d6524ac3176c7f1bd728375a9728d6ac911ad27532c28db77b1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.114047/kopia-20210412.0.114047-macOS-arm64.tar.gz"
    sha256 "6538ffe6817885e4256221f4a3fee05ebaa01ca405cff07c9bc6d341468c0290"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.114047/kopia-20210412.0.114047-linux-x64.tar.gz"
    sha256 "16a582e53221fdf0296382253861fcb3204e5f346fbf4c9766d84ed43bf85679"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.114047/kopia-20210412.0.114047-linux-arm.tar.gz"
    sha256 "bad57d137cd89e8b3e330ee4399255c42c0717ad2d2ca1c493df228c37e58466"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210412.0.114047/kopia-20210412.0.114047-linux-arm64.tar.gz"
    sha256 "16976cc009cd2b5e70ede40b5fcff85120ca7ed14d8973facb0db33e38cee963"
  end

  def install
    bin.install "kopia"
  end
end
