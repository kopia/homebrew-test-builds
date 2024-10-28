# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241027.0.183945"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241027.0.183945/kopia-20241027.0.183945-macOS-x64.tar.gz"
    sha256 "d134abaff88b7018864ded5cc9bdde1b810a38233f0e54ad449135911bd93e28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241027.0.183945/kopia-20241027.0.183945-macOS-arm64.tar.gz"
    sha256 "12d20223d06b022673b86b12cbbf5d46fbca77c1579ea140d087e17b21ad31e8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241027.0.183945/kopia-20241027.0.183945-linux-x64.tar.gz"
    sha256 "b41b0a122751d3eb992b8357a715b0070d00f41ee77e53660774ad6596e6d94d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241027.0.183945/kopia-20241027.0.183945-linux-arm.tar.gz"
    sha256 "7e0eb21c5aff93b1c65a4f29aa9b094bf4d7b053b42ddf75b229cf211ed70d49"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241027.0.183945/kopia-20241027.0.183945-linux-arm64.tar.gz"
    sha256 "2c6b31e586c5743f12354454a31fbfae6163ba587e1d53d9d16b2c0b37c23bfa"
  end

  def install
    bin.install "kopia"
  end
end
