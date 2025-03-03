# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250303.0.63632"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.63632/kopia-20250303.0.63632-macOS-x64.tar.gz"
    sha256 "2b63a5e4681dca4797572d8a23dc8d9786c52e7d3ad2bb6578bde1dba5e40c6a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.63632/kopia-20250303.0.63632-macOS-arm64.tar.gz"
    sha256 "a496d5706a8429ede57cf058a5a3fdbaebf60e83edfbb07fecf3afe2413c128d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.63632/kopia-20250303.0.63632-linux-x64.tar.gz"
    sha256 "fd95b0f9a73b97ba3e8069c265e8039f6f64e3445d859de6ae8bc88f9c2e0f10"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.63632/kopia-20250303.0.63632-linux-arm.tar.gz"
    sha256 "5c00c6e72998c3d12a688127eae5b92b95935c2eae45df9356b4a1bcecb5b2b6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250303.0.63632/kopia-20250303.0.63632-linux-arm64.tar.gz"
    sha256 "40dd5c9a3b0417449e273c1e4f663e62c1c583be302968925d163b785a1c47bf"
  end

  def install
    bin.install "kopia"
  end
end
