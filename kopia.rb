# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230713.0.213608"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230713.0.213608/kopia-20230713.0.213608-macOS-x64.tar.gz"
    sha256 "56b935e49b47a241d5658a7aaa3f0cf842045b0682cbcbfd755372c5f2276de1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230713.0.213608/kopia-20230713.0.213608-macOS-arm64.tar.gz"
    sha256 "5dbade74bf82e9a7e42de8a6d323e54bac91d57a99356360633868d8a9dbad6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230713.0.213608/kopia-20230713.0.213608-linux-x64.tar.gz"
    sha256 "fe84c6dc55b3e83070b7fab46b179da15ca6f58f7caea8529924ec5923fa745f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230713.0.213608/kopia-20230713.0.213608-linux-arm.tar.gz"
    sha256 "aebc1a2d08f0d31d47e03460b11304e33c5b6b48659079d067fda32f998eaf3a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230713.0.213608/kopia-20230713.0.213608-linux-arm64.tar.gz"
    sha256 "ae6fac687bf011ab22c7964ef52768cce0776ec846a0788910b9c52f7d9237d1"
  end

  def install
    bin.install "kopia"
  end
end
