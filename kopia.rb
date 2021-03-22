# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210321.0.222342"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.222342/kopia-20210321.0.222342-macOS-x64.tar.gz"
    sha256 "a194d08cab166a7e3b4cfc21d732215ee5dbe1deed73142e7ae280f2d1726b9e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.222342/kopia-20210321.0.222342-macOS-arm64.tar.gz"
    sha256 "e55eb4794b5d0f8ee343ff77236eca6b71d24ab21b928821d5287618ea60da99"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.222342/kopia-20210321.0.222342-linux-x64.tar.gz"
    sha256 "27e67ab049c1351e364d179bd1b510d3eb648da0fb066f208b5e04726ff22f14"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.222342/kopia-20210321.0.222342-linux-arm.tar.gz"
    sha256 "2008423ad1b9d308ee3544eec0bef9e588bd4004aa4b61536ae78cadcda06b3d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210321.0.222342/kopia-20210321.0.222342-linux-arm64.tar.gz"
    sha256 "9740af82004f15f4cae507e619236f8bb9f1d11cca2bc94d43851ab8ddb146fe"
  end

  def install
    bin.install "kopia"
  end
end
