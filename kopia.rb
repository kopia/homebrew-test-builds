# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220816.0.223033"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220816.0.223033/kopia-20220816.0.223033-macOS-x64.tar.gz"
    sha256 "907cd5f3689ef55b348ddac3507c4982a25cb918bc1e5fee9d9a2aa06f8fabde"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220816.0.223033/kopia-20220816.0.223033-macOS-arm64.tar.gz"
    sha256 "ce780605180c611fca63d5a03fb17225b50509c06db479faaa3ad642d68fc3ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220816.0.223033/kopia-20220816.0.223033-linux-x64.tar.gz"
    sha256 "66b3864af5fcf31c57fa09f88c11758236b16bf33d15fffeaa4a4f69815018df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220816.0.223033/kopia-20220816.0.223033-linux-arm.tar.gz"
    sha256 "a387fcb97948910e6c4f05965569b0fe6953956c0cecd516a3ded1bedc3010f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220816.0.223033/kopia-20220816.0.223033-linux-arm64.tar.gz"
    sha256 "f31ad00b073feb6dfcda82248373a87f1e7f264efb0a98a010afdcaed5dbdac4"
  end

  def install
    bin.install "kopia"
  end
end
