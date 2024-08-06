# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240805.0.183415"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.183415/kopia-20240805.0.183415-macOS-x64.tar.gz"
    sha256 "e58288ea8f9f3b28d00aabec00464455905978dc42697aa3b3fcc41cefd1832b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.183415/kopia-20240805.0.183415-macOS-arm64.tar.gz"
    sha256 "fcfc267c9e6e6aeaf566074d5cd19685187db7a9e6a3cee5f5a5e64708096b33"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.183415/kopia-20240805.0.183415-linux-x64.tar.gz"
    sha256 "35a57e7d9cb5aafdb7f5286d2a1696f409bde59690950e02bbdc55192a1f9082"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.183415/kopia-20240805.0.183415-linux-arm.tar.gz"
    sha256 "6b0acc2a4b829bc42762dc5f8cfb815c00e7e803de862c27090ae5bae9188672"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.183415/kopia-20240805.0.183415-linux-arm64.tar.gz"
    sha256 "e5e5195097f65241ff9d0e40c5db19377ce0cd309018d58c884a0993fa13ca6d"
  end

  def install
    bin.install "kopia"
  end
end
