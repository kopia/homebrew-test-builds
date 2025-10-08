# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251008.0.52618"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251008.0.52618/kopia-20251008.0.52618-macOS-x64.tar.gz"
    sha256 "7dfb0529c2d26ebf5832273fbe8584fcf2167bd43cedbed1ae57ee2e1556567e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251008.0.52618/kopia-20251008.0.52618-macOS-arm64.tar.gz"
    sha256 "e376ddd1919767511b8fedb04cb0398e42f4e8942551e16c73992fea5980bcac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251008.0.52618/kopia-20251008.0.52618-linux-x64.tar.gz"
    sha256 "058590484ad0c6647059e2e14b1d9d783bc0fc4d57d2f7c51421bb46fec0b12d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251008.0.52618/kopia-20251008.0.52618-linux-arm.tar.gz"
    sha256 "da969b06382b9700cfd8cde86ba2774c5741b988433bc59e6a7d201ef6bc4f18"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251008.0.52618/kopia-20251008.0.52618-linux-arm64.tar.gz"
    sha256 "46cd87477b17ddbfb8543d5ee3ad9c962c64058aec3964d5a304ce6e920ed19e"
  end

  def install
    bin.install "kopia"
  end
end
