# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220520.0.180435"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220520.0.180435/kopia-20220520.0.180435-macOS-x64.tar.gz"
    sha256 "85b9b4370fdab2545f3f525898597c6b0f64b9ee793b78d5e456b9ecee9dba95"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220520.0.180435/kopia-20220520.0.180435-macOS-arm64.tar.gz"
    sha256 "439a15c29de4b51e2708bf507de0635ed0328c6a39809d4799a27e7c796a5230"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220520.0.180435/kopia-20220520.0.180435-linux-x64.tar.gz"
    sha256 "6d54206c2a21772dc738f522f9d6d8bb21e5098b255ac6157d5f6b2c30852462"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220520.0.180435/kopia-20220520.0.180435-linux-arm.tar.gz"
    sha256 "7ccc17a2213d26d9876f19deee8e6b799027b8976c4daa04fd0af4f27b17d068"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220520.0.180435/kopia-20220520.0.180435-linux-arm64.tar.gz"
    sha256 "54c92f1c5fbdf10b3a472c7e9c20a642c03c6b737a75ce1a1eacac9cebb7a875"
  end

  def install
    bin.install "kopia"
  end
end
