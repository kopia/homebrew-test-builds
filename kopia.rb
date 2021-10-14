# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211014.0.71446"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.71446/kopia-20211014.0.71446-macOS-x64.tar.gz"
    sha256 "20b13778643aab7b2493906696a19b745cfb3637ced27c75d1058d4011f389b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.71446/kopia-20211014.0.71446-macOS-arm64.tar.gz"
    sha256 "63aba39d038f1f7d99ec8f7b1e7c971270db3702401380ed4fe8327d76162bdd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.71446/kopia-20211014.0.71446-linux-x64.tar.gz"
    sha256 "50d2810a35f4f4c1cbff393daa6cb996595f46b2215a251d00d85b3854c3e259"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.71446/kopia-20211014.0.71446-linux-arm.tar.gz"
    sha256 "357516a3f318cb535b10fa56599f42bb531d29be9631a66a6415c60ade73df15"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211014.0.71446/kopia-20211014.0.71446-linux-arm64.tar.gz"
    sha256 "c618b2b9263d57be76ea7f92c0dcb037297c6cd9142830d615655550ea023f21"
  end

  def install
    bin.install "kopia"
  end
end
