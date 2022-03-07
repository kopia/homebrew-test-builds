# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.202527"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.202527/kopia-20220306.0.202527-macOS-x64.tar.gz"
    sha256 "3179fc4f22bc0282a73a0100c6f85f36655758507a3f65cb3555811e2cf1a5a6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.202527/kopia-20220306.0.202527-macOS-arm64.tar.gz"
    sha256 "2e5764cb6ad398462c7b8ab843ebe58724c37b27fd9b96e2871b822f141740e6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.202527/kopia-20220306.0.202527-linux-x64.tar.gz"
    sha256 "b14d55eb1ab9974f3f79657e5e0cafcc08d268fb00ae0b82af38b6df06c0ed7e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.202527/kopia-20220306.0.202527-linux-arm.tar.gz"
    sha256 "41584798ecffb9e2c532d460eb9c56c5f38464dd631ce1c0853b5b24fa0277aa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.202527/kopia-20220306.0.202527-linux-arm64.tar.gz"
    sha256 "b9119eab1ae085b51132d273540a7bb26b88215b41e55d69e4a3dfa2d1349e2e"
  end

  def install
    bin.install "kopia"
  end
end
