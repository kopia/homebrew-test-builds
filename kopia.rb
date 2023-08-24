# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230823.0.173807"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.173807/kopia-20230823.0.173807-macOS-x64.tar.gz"
    sha256 "4087516b24f519a1bf7fe1e5db479694cdd32de1af1bd4e5576dd886079d0c8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.173807/kopia-20230823.0.173807-macOS-arm64.tar.gz"
    sha256 "a23e813430f9bd555392501db14f99bc722aa3a384e79eab8f01e8c815d6d9c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.173807/kopia-20230823.0.173807-linux-x64.tar.gz"
    sha256 "772f93c9fd0ba58502d6509a93eb0c2a50c72ab81beb37aa5b73bf202c631001"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.173807/kopia-20230823.0.173807-linux-arm.tar.gz"
    sha256 "5905e2dee3313958e692647709834b0e39272ae11f6281aaaa379dbea784577a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.173807/kopia-20230823.0.173807-linux-arm64.tar.gz"
    sha256 "7f49ae67a8a75b66c28f6b2045e48a48e0b7962814e8aedd006b8ec2397132f0"
  end

  def install
    bin.install "kopia"
  end
end
