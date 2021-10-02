# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211002.0.111841"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111841/kopia-20211002.0.111841-macOS-x64.tar.gz"
    sha256 "74a5398699206cb68a4b6c2694925d5ee2879a75584538480eaa534c836e9cf0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111841/kopia-20211002.0.111841-macOS-arm64.tar.gz"
    sha256 "aab179326696cd967e0fb10ccc89526540b4a7b91fa9fff5083fa040b9998b6c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111841/kopia-20211002.0.111841-linux-x64.tar.gz"
    sha256 "1c68e1da8a3c22f3586bfd20224bc973841781f725ee156b2c6e0387918ca99c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111841/kopia-20211002.0.111841-linux-arm.tar.gz"
    sha256 "020a637eff46b2fabaec34e197bea65449c20e5671b8cc4dcd4785cb52eb4aa9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211002.0.111841/kopia-20211002.0.111841-linux-arm64.tar.gz"
    sha256 "6d478f156bf507d398d8a4bf026a8afec9a096a581fefd920978ebd252b0fd06"
  end

  def install
    bin.install "kopia"
  end
end
