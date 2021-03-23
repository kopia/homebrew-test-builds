# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210322.0.223924"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210322.0.223924/kopia-20210322.0.223924-macOS-x64.tar.gz"
    sha256 "52f900fec5fd8f7480a8662db29f227a30e7fb6d32f6b2fedbc63fcc1bd939ae"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210322.0.223924/kopia-20210322.0.223924-macOS-arm64.tar.gz"
    sha256 "3e0450eeafe935bf56ed128e69f7e2f8aa143b2ef2036feb2a2b68e31b1d0264"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210322.0.223924/kopia-20210322.0.223924-linux-x64.tar.gz"
    sha256 "bfa3445063dc1dd5a7bd89cc3c19051976d96935b46b23f60cf508b5534dda65"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210322.0.223924/kopia-20210322.0.223924-linux-arm.tar.gz"
    sha256 "c98e1fe39637d76f5acd4e67038a8e70b0210b185d0fca61bff578128d6f1f1d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210322.0.223924/kopia-20210322.0.223924-linux-arm64.tar.gz"
    sha256 "4184133cbf3aa1047f36406b17b80327aaebe1a6bf4a1544962bfbdc368861dc"
  end

  def install
    bin.install "kopia"
  end
end
