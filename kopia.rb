# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211013.0.60718"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.60718/kopia-20211013.0.60718-macOS-x64.tar.gz"
    sha256 "86a9aba5f95e649ecd9f0a3779eee976bb29aff8804b39f30fb024a72fa57d9a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.60718/kopia-20211013.0.60718-macOS-arm64.tar.gz"
    sha256 "c7aac9f1ee553ee927ef69cff060182379bc194ce35f6f23409d5faf9061d611"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.60718/kopia-20211013.0.60718-linux-x64.tar.gz"
    sha256 "386c9a0c350db69e764a0696df26e55d5aa5d8b7636499cf064797507c63cc6a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.60718/kopia-20211013.0.60718-linux-arm.tar.gz"
    sha256 "f9bd3077e877edcc12c97cecef2a343d963330918d55ad15b2bfe738a07fa666"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211013.0.60718/kopia-20211013.0.60718-linux-arm64.tar.gz"
    sha256 "33ef51bfa16298eb397aef0ddf36025dd96f6513d5bb2b4af844e43c455a29e1"
  end

  def install
    bin.install "kopia"
  end
end
