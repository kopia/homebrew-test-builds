# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.122830"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.122830/kopia-20211218.0.122830-macOS-x64.tar.gz"
    sha256 "02f13a48727980a4d2ce61dbf83442c8932e7a829e360860cf7200da01a2c877"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.122830/kopia-20211218.0.122830-macOS-arm64.tar.gz"
    sha256 "e60f8554ad6af487657b933dbba5aa0f0128725784a267a2ec97e50ba3bd8fe9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.122830/kopia-20211218.0.122830-linux-x64.tar.gz"
    sha256 "b8eab87f2ea60c62e45a713c78ad5f0a423b4d11637165da347a268189ead4ae"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.122830/kopia-20211218.0.122830-linux-arm.tar.gz"
    sha256 "78da44401b49f44ce32811d92bd6df70f910c6ab2faf005ccefb7d8fd659c532"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.122830/kopia-20211218.0.122830-linux-arm64.tar.gz"
    sha256 "142432065291d4c0d446b26d3da48c51279a523a345ad9685b9635eeabfc4ef6"
  end

  def install
    bin.install "kopia"
  end
end
