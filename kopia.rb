# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250918.0.52834"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.52834/kopia-20250918.0.52834-macOS-x64.tar.gz"
    sha256 "91eff12cd8901f06fb40518f6f7813eb972b168992b2a5244e89a9dfce09233c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.52834/kopia-20250918.0.52834-macOS-arm64.tar.gz"
    sha256 "6d6b88c220021e3816cf953ae2b7b8079e9c5c209171d915a5b54537350e962d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.52834/kopia-20250918.0.52834-linux-x64.tar.gz"
    sha256 "f649a187436faa175ec9886a33cb45e379cc8ea45d6b439f31bc23d82cb57f56"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.52834/kopia-20250918.0.52834-linux-arm.tar.gz"
    sha256 "9ac490108fb069c1653c36823d207437e526e71c0526d9e0cc82051d62926791"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250918.0.52834/kopia-20250918.0.52834-linux-arm64.tar.gz"
    sha256 "4ce7adc6aba4e6f57115ed2171284d4eab6358e002ff5010fe393fe2bf0c34e5"
  end

  def install
    bin.install "kopia"
  end
end
