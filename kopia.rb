# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220708.0.225554"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.225554/kopia-20220708.0.225554-macOS-x64.tar.gz"
    sha256 "a165a361da78350ee02418538ef27ec58f337662e737e5b364c92ecfe22e4353"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.225554/kopia-20220708.0.225554-macOS-arm64.tar.gz"
    sha256 "115d409b8a8971e9534d7dbb1f6eb9fbe62b86f82c73a67556b662817434537f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.225554/kopia-20220708.0.225554-linux-x64.tar.gz"
    sha256 "31a35e8be3ed2bb2c32b1d81148cae60eaaac5aa630fed2f535bc78d2977861a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.225554/kopia-20220708.0.225554-linux-arm.tar.gz"
    sha256 "3eac6c7b6ca20e202b9d88b457cb0e6d85a80cefb63bdebd75d850ee657f3c63"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220708.0.225554/kopia-20220708.0.225554-linux-arm64.tar.gz"
    sha256 "378269ed7a95d6a0efc45a3603458ba5c28aa5bc38fa50c21d02aef206b6d282"
  end

  def install
    bin.install "kopia"
  end
end
