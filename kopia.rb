# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220125.0.212113"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220125.0.212113/kopia-20220125.0.212113-macOS-x64.tar.gz"
    sha256 "bc694cf0c6d403974d68a2ba5af4a3b3131d80b8fc0d2b869cdad7f4eba47e65"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220125.0.212113/kopia-20220125.0.212113-macOS-arm64.tar.gz"
    sha256 "072e894f5361fbd9ba8deafcccb422787c216eacbae6a427812c861cc7724be5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220125.0.212113/kopia-20220125.0.212113-linux-x64.tar.gz"
    sha256 "49a2131f7fbb7c5d36e5a2861a1d18905ed32bd95fe163979f8e436ae941c46d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220125.0.212113/kopia-20220125.0.212113-linux-arm.tar.gz"
    sha256 "aa96b3315a5497ad01d42cfece4fd233041eef820e40edd986a913cbf8918ee6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220125.0.212113/kopia-20220125.0.212113-linux-arm64.tar.gz"
    sha256 "cf1de92363160f15fb02a24c6fd3f48db75107ec5431ff6fefbd0bcfb88ee5d9"
  end

  def install
    bin.install "kopia"
  end
end
