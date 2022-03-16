# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220316.0.4657"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.4657/kopia-20220316.0.4657-macOS-x64.tar.gz"
    sha256 "267349c47c345d9e0880feb9273ccf72ed863af05984d40c96b1aa1ef99a53fb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.4657/kopia-20220316.0.4657-macOS-arm64.tar.gz"
    sha256 "50f41c66adffefceed03ffe7bcbf4241f339d1e4fb827e537d5475e19ddb450c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.4657/kopia-20220316.0.4657-linux-x64.tar.gz"
    sha256 "56cd332b87fcce83633e507c155015a852ace5f46022db6b455a13b60137c53c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.4657/kopia-20220316.0.4657-linux-arm.tar.gz"
    sha256 "9c913013869c0e5f532cd2e89de796f7c360cd3148528e8573d5394fb37fa2a4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.4657/kopia-20220316.0.4657-linux-arm64.tar.gz"
    sha256 "5920f5832ce3c88e7b14bffbce93dd8a2a783658d7c9cdc9e674db395eef7940"
  end

  def install
    bin.install "kopia"
  end
end
