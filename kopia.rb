# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240909.0.170007"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.170007/kopia-20240909.0.170007-macOS-x64.tar.gz"
    sha256 "5dd1d157a58eb3f065130001bd665077623e762fb56635bc7a2409dc05a802f4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.170007/kopia-20240909.0.170007-macOS-arm64.tar.gz"
    sha256 "dd898f86e264264df1328bbec74546cb2143bd1ea2ed094ffc4ab9b05780c8bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.170007/kopia-20240909.0.170007-linux-x64.tar.gz"
    sha256 "241c9438cf7c58608e4d8339a4f9ef684547c8bcd3cc54bdb5da92e2649528ed"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.170007/kopia-20240909.0.170007-linux-arm.tar.gz"
    sha256 "4e39cbe70b0e949f26ab817e8b91183cb4aeb65d6b7cf68506e40d8b7fad2f30"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240909.0.170007/kopia-20240909.0.170007-linux-arm64.tar.gz"
    sha256 "5aa7b6fa175c9adb55b9c5f378bc492a5e4eb1518b7032873ed3c82f37a8d349"
  end

  def install
    bin.install "kopia"
  end
end
