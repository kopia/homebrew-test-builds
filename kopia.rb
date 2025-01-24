# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250124.0.152009"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250124.0.152009/kopia-20250124.0.152009-macOS-x64.tar.gz"
    sha256 "d21d86ced72854550890391c6d42266137f0232a94e67a21b8239672aa46dc02"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250124.0.152009/kopia-20250124.0.152009-macOS-arm64.tar.gz"
    sha256 "7a7949ca696a6379fea21c75640247b2e9866fbd486d288f0a61653294adaafc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250124.0.152009/kopia-20250124.0.152009-linux-x64.tar.gz"
    sha256 "6b8185148f892b3aa810f34b157fc78b0506e1cc14fbf50fe61765038fbaa615"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250124.0.152009/kopia-20250124.0.152009-linux-arm.tar.gz"
    sha256 "9f87732c6f4b325bd8d75679e742861179291dc464806a6ec077e2772cb8509c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250124.0.152009/kopia-20250124.0.152009-linux-arm64.tar.gz"
    sha256 "6e500d9b0e0dbc4e3da5e50ca5b8743519d0208d2fe7dfeaec991eff7c517625"
  end

  def install
    bin.install "kopia"
  end
end
