# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.153545"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153545/kopia-20211103.0.153545-macOS-x64.tar.gz"
    sha256 "fdab02d1b51162197c55a74ac0b14dd261b44e3e0005bf5afaa4d7b9bb2241c7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153545/kopia-20211103.0.153545-macOS-arm64.tar.gz"
    sha256 "ecd2c445ce785e800c13c415fe4e07e4d4f05cc9a7089aac7a5424602af03ba6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153545/kopia-20211103.0.153545-linux-x64.tar.gz"
    sha256 "6e1767c26cbc60bd5929e7b25863e3a597738147ed11f99af3c927393c6dd47c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153545/kopia-20211103.0.153545-linux-arm.tar.gz"
    sha256 "b40527e7e2a97572286cacb169f188848e19e073e5950d513fddd4c08498d4b2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.153545/kopia-20211103.0.153545-linux-arm64.tar.gz"
    sha256 "6ab3c62b86d71f31789a92cd82bac49b886553d0d5ebc5e4e1aa2580eddda6a7"
  end

  def install
    bin.install "kopia"
  end
end
