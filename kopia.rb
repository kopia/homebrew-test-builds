# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220808.0.214508"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220808.0.214508/kopia-20220808.0.214508-macOS-x64.tar.gz"
    sha256 "43d6ca337a4e1d9ad7f36abb334f3ee3a6fbf8e7061187b56739547c97ce2bde"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220808.0.214508/kopia-20220808.0.214508-macOS-arm64.tar.gz"
    sha256 "88bf86645c8c43f1ad3572666ac5b7fc7d385ee51aece89e2e70b4b0e35e291a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220808.0.214508/kopia-20220808.0.214508-linux-x64.tar.gz"
    sha256 "a8b27238f5f7034f2b995eb72c64cf3e05a1bdbbfd1ff30c01a3ffe7e0905eeb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220808.0.214508/kopia-20220808.0.214508-linux-arm.tar.gz"
    sha256 "1a9bc8609380c6097deeba7819cfb4c4d4426b02524b7e11497ac1d2a9623676"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220808.0.214508/kopia-20220808.0.214508-linux-arm64.tar.gz"
    sha256 "6d670c0f902aacd44f9f393067a4a782a241d500aed8a8748c56ca0984c8cee0"
  end

  def install
    bin.install "kopia"
  end
end
