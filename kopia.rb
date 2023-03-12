# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230312.0.5034"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.5034/kopia-20230312.0.5034-macOS-x64.tar.gz"
    sha256 "baf9e7a7d5e1e840dc784b25232742ce411b4634d9a725aacd5dad9aabdc60a7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.5034/kopia-20230312.0.5034-macOS-arm64.tar.gz"
    sha256 "3cb1e52e9f1326cabb7a21b83b1e8da6273630f65282cb38cfb634f7abd9e53e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.5034/kopia-20230312.0.5034-linux-x64.tar.gz"
    sha256 "f4619ba711942d09fa44d4bfb4e35b7a729c55a6c8b72067ca2cde0ac90636b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.5034/kopia-20230312.0.5034-linux-arm.tar.gz"
    sha256 "8663adccd2c9506cc787264efd7646c051f940d36afcf4c4983bde72f729b62d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.5034/kopia-20230312.0.5034-linux-arm64.tar.gz"
    sha256 "538d7d4df8190187fdee2a1d684c6662c2b7c1e9e608948b3fd17fce93690456"
  end

  def install
    bin.install "kopia"
  end
end
