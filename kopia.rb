# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251116.0.50859"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.50859/kopia-20251116.0.50859-macOS-x64.tar.gz"
    sha256 "228607a5c3af51443371309300977bed4c57b9ab618f182e0e6366d0c318eff8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.50859/kopia-20251116.0.50859-macOS-arm64.tar.gz"
    sha256 "22536184435925421cba82f004c86460655aa20072f14d1a973208479225f7b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.50859/kopia-20251116.0.50859-linux-x64.tar.gz"
    sha256 "2e23bf5dca0768fec5e9d011be62beba944717b898ec8253661ff68f6eb3e716"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.50859/kopia-20251116.0.50859-linux-arm.tar.gz"
    sha256 "00083d479269916604ddc43fac45e58935f16584c6394cf0fe3b2079092a8216"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251116.0.50859/kopia-20251116.0.50859-linux-arm64.tar.gz"
    sha256 "dd5c2542539e82e6835b4ec542fd2d7f7ef0637e2dbe4b036419c4ab168d863a"
  end

  def install
    bin.install "kopia"
  end
end
