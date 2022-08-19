# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220819.0.73556"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.73556/kopia-20220819.0.73556-macOS-x64.tar.gz"
    sha256 "1f9fe75d62bb976d1cef713ac6c5d6bb8a47594bda36a8d7bc93790677ed0abf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.73556/kopia-20220819.0.73556-macOS-arm64.tar.gz"
    sha256 "5a7581b35b560fb0df9cd0e13fd8be6c21d6c3f9b46ab756331e989b0de54ab7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.73556/kopia-20220819.0.73556-linux-x64.tar.gz"
    sha256 "d7899115b9a93aa0eab88b655f50116e8903d1ba581a346bfffe3d05ace930c8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.73556/kopia-20220819.0.73556-linux-arm.tar.gz"
    sha256 "533f2eb799d9b544fb96f7486a9df5feeee84946123dd9a55505e6c1be454c37"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220819.0.73556/kopia-20220819.0.73556-linux-arm64.tar.gz"
    sha256 "decb6fd4efdb529e47c6ee12df39d0fb306d5631bb3e81d3cdc173f1ab4579ba"
  end

  def install
    bin.install "kopia"
  end
end
