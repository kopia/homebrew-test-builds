# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220316.0.123533"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.123533/kopia-20220316.0.123533-macOS-x64.tar.gz"
    sha256 "bf6d23f5181490610e565b8190b337e936e4bfc39f116fd8c6009defa8faadfe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.123533/kopia-20220316.0.123533-macOS-arm64.tar.gz"
    sha256 "7cacd1ca10dcb6057384ba6fa5be9f8228bd630fa63bea335ec5ef72abe71aa4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.123533/kopia-20220316.0.123533-linux-x64.tar.gz"
    sha256 "8a3fd465c4c40c1caaf1dd214028ab81821b3b72380ec19b895e2a544a3beaf9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.123533/kopia-20220316.0.123533-linux-arm.tar.gz"
    sha256 "0c12fdc8d0b0723c693a64fd5ee30ecf607033b1229069867ba89e718f1ca90d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220316.0.123533/kopia-20220316.0.123533-linux-arm64.tar.gz"
    sha256 "f8b1181bf190be00b75fcef37a66a50524d06413b64bc5d793465336e3495fcd"
  end

  def install
    bin.install "kopia"
  end
end
