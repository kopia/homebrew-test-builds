# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210921.0.185124"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210921.0.185124/kopia-20210921.0.185124-macOS-x64.tar.gz"
    sha256 "cf88f64f3ea1e58a67a2018de960b8c8e19ee274ef2b88921b4b9c190114b255"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210921.0.185124/kopia-20210921.0.185124-macOS-arm64.tar.gz"
    sha256 "cd4cb307c5737cedd7e10423bc7ce48d94d8aad0600733c18cc1f5967b47e48a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210921.0.185124/kopia-20210921.0.185124-linux-x64.tar.gz"
    sha256 "6194a08187b87fdfc61afeae6535b6cb72bc7a1667404e9251b727dddbbb99d9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210921.0.185124/kopia-20210921.0.185124-linux-arm.tar.gz"
    sha256 "1ccc3b9dd121d80cac9c079d8af87167f82553df543751511d0f22be8c1eb772"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210921.0.185124/kopia-20210921.0.185124-linux-arm64.tar.gz"
    sha256 "96e3d2e75f4ff918e95aaefecbf9fea0e90f20684765920affa9ecdb321d23f3"
  end

  def install
    bin.install "kopia"
  end
end
