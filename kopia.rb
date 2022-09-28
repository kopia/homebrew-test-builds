# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220928.0.45634"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.45634/kopia-20220928.0.45634-macOS-x64.tar.gz"
    sha256 "c8f518db89723b644b630733abfd5dfaaa8926ade1480673ae5a38f350793c3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.45634/kopia-20220928.0.45634-macOS-arm64.tar.gz"
    sha256 "870182c49c0ad5895a6363a518d3076f281b9922262073c158a26888e817da52"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.45634/kopia-20220928.0.45634-linux-x64.tar.gz"
    sha256 "44fe765d46a729c97bbe29762f3db2a355bc123ab8914054a5f326ff69b4caf1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.45634/kopia-20220928.0.45634-linux-arm.tar.gz"
    sha256 "e817dda7f27abfda746b3bb4250ace438f86cbe1195ccd99bda481de1d133a8c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.45634/kopia-20220928.0.45634-linux-arm64.tar.gz"
    sha256 "d9d5f4b3b5b3ff43775021480566b0c24970cfd43cf85755fda1164940e5aeec"
  end

  def install
    bin.install "kopia"
  end
end
