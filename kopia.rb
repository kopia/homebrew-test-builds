# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260928.0.173741"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260928.0.173741/kopia-20260928.0.173741-macOS-x64.tar.gz"
    sha256 "0ddf715ba53f0b0de423fdffa354abb7943be174f619b783e15e0dc36aa5cb96"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260928.0.173741/kopia-20260928.0.173741-macOS-arm64.tar.gz"
    sha256 "4aa3f8c268604b3d811c289f43e44dc7cf65286b78204255f1c96a5c6e3ca3fc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260928.0.173741/kopia-20260928.0.173741-linux-x64.tar.gz"
    sha256 "1178b814d9b98cabf135c06e1484ce9a388aeabc38d2cf4e9e4835a0b0f6c332"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260928.0.173741/kopia-20260928.0.173741-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260928.0.173741/kopia-20260928.0.173741-linux-arm64.tar.gz"
    sha256 "f427a8318546b53758d708152f8e4b586820cfa700ba3e11ef7202b7afc8794b"
  end

  def install
    bin.install "kopia"
  end
end
