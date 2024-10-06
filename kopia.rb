# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241006.0.52323"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.52323/kopia-20241006.0.52323-macOS-x64.tar.gz"
    sha256 "e255e9d2e27167be97c5ba0cd0660030dc485b83d4706248720229f8c01ca345"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.52323/kopia-20241006.0.52323-macOS-arm64.tar.gz"
    sha256 "56afad54ac59f8b11eab1f2c4493b8791a9750d0f68da92ab532c51e17b1cb0a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.52323/kopia-20241006.0.52323-linux-x64.tar.gz"
    sha256 "59d6c11f45b2857cfae8a9b37edc02eebeab4b2e7879e9d32a99a5b5500daf70"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.52323/kopia-20241006.0.52323-linux-arm.tar.gz"
    sha256 "a7939e70c3a954defec5cfcf8a55773105eac37d47b7e51fbcdb1899eb0ba689"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241006.0.52323/kopia-20241006.0.52323-linux-arm64.tar.gz"
    sha256 "d5d30b1993b5c7fe6479693b794f4d142b630aa68d42b50635799c02d2368128"
  end

  def install
    bin.install "kopia"
  end
end
