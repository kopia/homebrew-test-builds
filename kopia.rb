# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220201.0.193224"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193224/kopia-20220201.0.193224-macOS-x64.tar.gz"
    sha256 "a61312b663701e3098b4d825dd7c26a81a2b6cec4b758ebf863a8cda4ddd3ad1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193224/kopia-20220201.0.193224-macOS-arm64.tar.gz"
    sha256 "8fd9a45ebd4f7dc02b0a7302a3fc73419019899b7c64de91afac9b8e6a211261"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193224/kopia-20220201.0.193224-linux-x64.tar.gz"
    sha256 "c6a673e1a5586c40ec80baa2b7e67be57e96890e6d9e25ec11e209f393e9cf4e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193224/kopia-20220201.0.193224-linux-arm.tar.gz"
    sha256 "069c10cd6d1c5254644fd238c969d5c8819bccb4b282ecf3c4b02f63ded36903"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220201.0.193224/kopia-20220201.0.193224-linux-arm64.tar.gz"
    sha256 "0c4298b0238bfc18d243fc834afc8908972e5ba48044c328322130ba56d2b590"
  end

  def install
    bin.install "kopia"
  end
end
