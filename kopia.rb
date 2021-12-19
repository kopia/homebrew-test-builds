# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211218.0.161126"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161126/kopia-20211218.0.161126-macOS-x64.tar.gz"
    sha256 "0cf7fb7bc3df68c02ac0b40bc6a01b3a5b4f9871f6e77f7f44b950acc745269d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161126/kopia-20211218.0.161126-macOS-arm64.tar.gz"
    sha256 "4d829e36d4950924d480874cb4ebb82f25f81b0a3c4c6a49d6afabc9713483e0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161126/kopia-20211218.0.161126-linux-x64.tar.gz"
    sha256 "8b04203d30c0d7bfef3c2dd7afd7c2fdaae30a8a7364e2560fdb23f599424a98"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161126/kopia-20211218.0.161126-linux-arm.tar.gz"
    sha256 "0d899a02d8b21600ad91fcf790e98d1731b2b0b5b30baa872ef37c54a67ee5ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211218.0.161126/kopia-20211218.0.161126-linux-arm64.tar.gz"
    sha256 "c9b00ddec0c9f24ec3c2e85fd911fefa461128470cfb929317a67181e20535bd"
  end

  def install
    bin.install "kopia"
  end
end
