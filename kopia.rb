# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.31850"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.31850/kopia-20250602.0.31850-macOS-x64.tar.gz"
    sha256 "1fdad89d7591a3831e88b2557ce3bdeda0d8617be4673550bd9f6aa3e8d73c0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.31850/kopia-20250602.0.31850-macOS-arm64.tar.gz"
    sha256 "814096a4ba98cd859432be17b790b93f373a882ed72846c8a6d59d2e19956b16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.31850/kopia-20250602.0.31850-linux-x64.tar.gz"
    sha256 "bc67e0a2bdba7dcac0d8da0550d4bf891ea00863c128faf0d6c302f1cb64cd4a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.31850/kopia-20250602.0.31850-linux-arm.tar.gz"
    sha256 "814e5ff625555b28102b71b63d486d1e577c6698aa6fb4ab578357642ff59d19"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.31850/kopia-20250602.0.31850-linux-arm64.tar.gz"
    sha256 "4adf73abff37467e6c4f1761a7e30038dcdadca0ba238417c447694a4edc72ef"
  end

  def install
    bin.install "kopia"
  end
end
