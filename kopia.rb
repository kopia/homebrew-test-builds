# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210510.0.201222"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201222/kopia-20210510.0.201222-macOS-x64.tar.gz"
    sha256 "4df478f0bc17f0f3071562cb68a8bc9a518057fd45012fcb29b416f7a7f65791"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201222/kopia-20210510.0.201222-macOS-arm64.tar.gz"
    sha256 "cb585ea03e05b97102c2a4ea04372ad3f8d4575d2be707a863520cf9c08def38"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201222/kopia-20210510.0.201222-linux-x64.tar.gz"
    sha256 "21ac860bbe67461d19f91beabb88ef0c00c9e9fef0200035361310626bc4c2df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201222/kopia-20210510.0.201222-linux-arm.tar.gz"
    sha256 "1eab41de6136d4ca98524fc53c5f6cd561e768f88834a0ff4844e748681c126b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210510.0.201222/kopia-20210510.0.201222-linux-arm64.tar.gz"
    sha256 "871cc808ae3078624de7772f68b1cf50e674585e5a8c9d428e2f5b4aa86ea258"
  end

  def install
    bin.install "kopia"
  end
end
