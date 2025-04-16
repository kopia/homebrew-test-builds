# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250415.0.224913"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.224913/kopia-20250415.0.224913-macOS-x64.tar.gz"
    sha256 "8380400bcee6732bbfe580b66dde5e54f11e352a340f430e1056fa1b86d4efcd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.224913/kopia-20250415.0.224913-macOS-arm64.tar.gz"
    sha256 "4742918c28528c93217773bc742b88aa17e48cb574715d33aadc142c55609362"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.224913/kopia-20250415.0.224913-linux-x64.tar.gz"
    sha256 "b205ef545d91c4fa59b9ae66141b6da0ff5d675d989705b2ca7a0da5cbb8115e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.224913/kopia-20250415.0.224913-linux-arm.tar.gz"
    sha256 "08857f8d1fab2bd92c5255b2acaa711c918e599472ffc2e41adb7c6c5cab4025"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250415.0.224913/kopia-20250415.0.224913-linux-arm64.tar.gz"
    sha256 "0cebf0ba74f0cbf299abec20db6ec0d763871aaf95a2789cac678503231e6ef9"
  end

  def install
    bin.install "kopia"
  end
end
