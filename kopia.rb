# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240220.0.162046"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.162046/kopia-20240220.0.162046-macOS-x64.tar.gz"
    sha256 "c5395b91f0c8f02093b375ce506c60866e2b2cc5439fe13adced0daa0ea07fad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.162046/kopia-20240220.0.162046-macOS-arm64.tar.gz"
    sha256 "b750fef57a353fe0eeae053f408b4fc1ad171c16c55827abdae396e8a9942e50"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.162046/kopia-20240220.0.162046-linux-x64.tar.gz"
    sha256 "72aff546066180f12e73e2763e265e844dd013cb91d3d163997ad328d7068a7f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.162046/kopia-20240220.0.162046-linux-arm.tar.gz"
    sha256 "0a2988298d395dc4c81cfc9286b1dcd0fe8b2e4af65f63ddb61969f47cdef077"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240220.0.162046/kopia-20240220.0.162046-linux-arm64.tar.gz"
    sha256 "e9405577751522cf0594129a794f869a0ac0c421a1a84b16e584505a591730dd"
  end

  def install
    bin.install "kopia"
  end
end
