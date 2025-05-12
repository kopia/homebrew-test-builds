# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250512.0.233428"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.233428/kopia-20250512.0.233428-macOS-x64.tar.gz"
    sha256 "e6ac428c6a9a634a2ee45af7ac5c59e07441503a3450803b11b0586cfbf64ef5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.233428/kopia-20250512.0.233428-macOS-arm64.tar.gz"
    sha256 "e91689f38f6640dcab06cb29ad9d5c1d26206847ef548ba60d8c6c5493d3ae05"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.233428/kopia-20250512.0.233428-linux-x64.tar.gz"
    sha256 "6c67a90f640bb1eba9d91aa9a302c0dda0d8c791a9b464b4d6b6261cec892947"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.233428/kopia-20250512.0.233428-linux-arm.tar.gz"
    sha256 "938555cc13ac18cd78908fac0200584ada2a78e51b7076cf43b018c2f5e45749"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.233428/kopia-20250512.0.233428-linux-arm64.tar.gz"
    sha256 "3312e2a9b470d8f31bfc0d8069cb87751f03a73c8766666d14a5002852529740"
  end

  def install
    bin.install "kopia"
  end
end
