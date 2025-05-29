# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250529.0.152655"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.152655/kopia-20250529.0.152655-macOS-x64.tar.gz"
    sha256 "6f0cbd9dfd9bad767b0825a20899d1f2a1fa7715796e0dbad86f549172286085"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.152655/kopia-20250529.0.152655-macOS-arm64.tar.gz"
    sha256 "cc0b5720495244a75ba921d80ef8edf6e33fa148ff421e977bb3ecbb9aebdd37"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.152655/kopia-20250529.0.152655-linux-x64.tar.gz"
    sha256 "9ded7e59f647af4b0569c59ec8f0cc1de5301d8becb15d25fa27535002f8821f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.152655/kopia-20250529.0.152655-linux-arm.tar.gz"
    sha256 "1d38bd7ce6423536957cb071e025892863ea8210fd7b8c1b51f9c6095d01aac2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250529.0.152655/kopia-20250529.0.152655-linux-arm64.tar.gz"
    sha256 "435fd8a1eefe5dd96a7b17a0f30b482984822aa95c634a9ba1c830ee8717c298"
  end

  def install
    bin.install "kopia"
  end
end
