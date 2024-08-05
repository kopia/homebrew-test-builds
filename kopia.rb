# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240804.0.190504"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.190504/kopia-20240804.0.190504-macOS-x64.tar.gz"
    sha256 "3813e6bc35210d3b2ae3ce127cb71a320e2199f6a260f1c38c79c0151ffbbb85"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.190504/kopia-20240804.0.190504-macOS-arm64.tar.gz"
    sha256 "15f71e68228050cad96a963742666cf55236ee57f4fa5aba5d421c21e94385fa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.190504/kopia-20240804.0.190504-linux-x64.tar.gz"
    sha256 "119977de8ff49530acf5cf390af016b46fe61c6161cdb77bab9a13a164b843b1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.190504/kopia-20240804.0.190504-linux-arm.tar.gz"
    sha256 "20afa321fd1b07f61eb24122fb07d92d52004bc883eb278058c746ee1459147c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240804.0.190504/kopia-20240804.0.190504-linux-arm64.tar.gz"
    sha256 "261dfbaad416c5df70e75fef77e6a0dbc66c525a350b474088f1145422f91ad0"
  end

  def install
    bin.install "kopia"
  end
end
