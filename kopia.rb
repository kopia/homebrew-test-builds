# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.144858"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144858/kopia-20211218.0.144858-macOS-x64.tar.gz"
    sha256 "8e2adb9215a066863023d886eeb6102eb1452f418550cf1fac10e7a1c45e0c72"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144858/kopia-20211218.0.144858-macOS-arm64.tar.gz"
    sha256 "e6b4365085bcbcb952de37c3a20d15d8b945662824bf99f9b030462c8d769e63"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144858/kopia-20211218.0.144858-linux-x64.tar.gz"
    sha256 "fc02862863b19c99a3fe4d04c512b0e5abda6942d04548c999451c7472fbf1ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144858/kopia-20211218.0.144858-linux-arm.tar.gz"
    sha256 "87c66d31c32adf55d11cdc35b160ed97f86d9114374c7e98665e532a73bd0da3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.144858/kopia-20211218.0.144858-linux-arm64.tar.gz"
    sha256 "9d7cc662fa5afd1eb439f340a0654e22646c67e511ce4edc2964312b31836072"
  end

  def install
    bin.install "kopia"
  end
end
