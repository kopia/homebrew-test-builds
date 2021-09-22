# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210922.0.134446"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210922.0.134446/kopia-20210922.0.134446-macOS-x64.tar.gz"
    sha256 "f4c95625b459e0ab76028c069f187570ed8b6caa172d8344f8c9814b48fb002f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210922.0.134446/kopia-20210922.0.134446-macOS-arm64.tar.gz"
    sha256 "289889f40547fcdb1c60f6bc6f922b969ae653d43dfff354bac17cf03637ee21"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210922.0.134446/kopia-20210922.0.134446-linux-x64.tar.gz"
    sha256 "ad8b62f1d5b67ee7daba57802913df11c9b1e853c3a4df016d21df1a4dd7e013"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210922.0.134446/kopia-20210922.0.134446-linux-arm.tar.gz"
    sha256 "51a653e029de2d856e34be2f2ad8bde5c8b10c3be53042e1f25076f9b85793ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210922.0.134446/kopia-20210922.0.134446-linux-arm64.tar.gz"
    sha256 "f4f49fa0010786c78665b350d8f2d17927033950d5c21fad4441f47d805efafc"
  end

  def install
    bin.install "kopia"
  end
end
