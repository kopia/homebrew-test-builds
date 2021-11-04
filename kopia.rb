# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211103.0.213810"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213810/kopia-20211103.0.213810-macOS-x64.tar.gz"
    sha256 "1faf96bc119e5faa042dde1b0d167a70748b9d3f5ab023bac2369dcab9e1e346"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213810/kopia-20211103.0.213810-macOS-arm64.tar.gz"
    sha256 "eb07de5de78b62e188b6dba893652274ede3304b7cb79cb64e5fbfc800fa40d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213810/kopia-20211103.0.213810-linux-x64.tar.gz"
    sha256 "48155f8cfe2f29b0e24fa3c720fe5fda0b48c9c17bc01f25a2e82943c8953f0c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213810/kopia-20211103.0.213810-linux-arm.tar.gz"
    sha256 "a0e1e46177cb06e34b0a3d0947527be140ce6ee9cb2045c5bc062cce244a37dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211103.0.213810/kopia-20211103.0.213810-linux-arm64.tar.gz"
    sha256 "1c7fca66d6e22a0528ff8456009ea948178acf68179a85238655ebb37ad6d061"
  end

  def install
    bin.install "kopia"
  end
end
