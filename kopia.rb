# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220809.0.193256"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.193256/kopia-20220809.0.193256-macOS-x64.tar.gz"
    sha256 "37c3e05694b878183b4fb091c4cc2b829d0ea721d3681166af88f0fb46aeacfe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.193256/kopia-20220809.0.193256-macOS-arm64.tar.gz"
    sha256 "f300a62b14e7710a318acdadfe7559cd979a9c788f741e8c7197b12a5fcb602e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.193256/kopia-20220809.0.193256-linux-x64.tar.gz"
    sha256 "2c119c92528ca08be7a038d607cb8a40b9b616fa6d46f62d7ded9695675bfec5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.193256/kopia-20220809.0.193256-linux-arm.tar.gz"
    sha256 "71314f4f18cb90e9ec2dcafe140a31f19ad2861b99c7960260c55dfb13d3ab80"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.193256/kopia-20220809.0.193256-linux-arm64.tar.gz"
    sha256 "af9ec7c2ba4a25cffcfdcb0f3017a304fb6d3c93c42946c67af67134bec23952"
  end

  def install
    bin.install "kopia"
  end
end
