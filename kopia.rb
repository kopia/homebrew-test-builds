# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210820.0.182645"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.182645/kopia-20210820.0.182645-macOS-x64.tar.gz"
    sha256 "0e2200b9f1f2a8c4d86d6d4a61a1b650a9935ad22b090b734f863dff94f74a0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.182645/kopia-20210820.0.182645-macOS-arm64.tar.gz"
    sha256 "0ddcf7eefa9784edcea9ec61ad81e3ae059ed46b81f8e6537633dfe18c1f6117"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.182645/kopia-20210820.0.182645-linux-x64.tar.gz"
    sha256 "8794f4966030c4c493ae2f01f31a32a2f822803bab481f4fd39b85669eaad99f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.182645/kopia-20210820.0.182645-linux-arm.tar.gz"
    sha256 "4a3dd76ca0682796520bc7143cf5e51156c29610c914d00557d338050a2306e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210820.0.182645/kopia-20210820.0.182645-linux-arm64.tar.gz"
    sha256 "c33f8e5c4a50942315850ff97310d28566ceb4d2aae8716cf2a5ac2de93e21dd"
  end

  def install
    bin.install "kopia"
  end
end
