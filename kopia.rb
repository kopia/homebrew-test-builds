# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210402.0.215524"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215524/kopia-20210402.0.215524-macOS-x64.tar.gz"
    sha256 "7ef336ac39f11e874c86b609584098f378f42fc2423649a5d508ffd70ed840d6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215524/kopia-20210402.0.215524-macOS-arm64.tar.gz"
    sha256 "e18d46e063b2371988f3d0572e744233d6c93828d6f9eeafc5cd74a03e751c01"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215524/kopia-20210402.0.215524-linux-x64.tar.gz"
    sha256 "9c551afb266d7d0ca7035915ebc6343930a2367596900898bdccaf8206ee629c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215524/kopia-20210402.0.215524-linux-arm.tar.gz"
    sha256 "037238180fa5144cc5f34f6819930c33509d69d8cd36e8008af66f48f55efa74"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.215524/kopia-20210402.0.215524-linux-arm64.tar.gz"
    sha256 "42a4f55b561ad7b7a0cb9bd90121e756c1eeec069d397956d2fd75febb58aaba"
  end

  def install
    bin.install "kopia"
  end
end
