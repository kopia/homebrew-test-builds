# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250430.0.173703"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.173703/kopia-20250430.0.173703-macOS-x64.tar.gz"
    sha256 "14325e56e57c6a5686d4151649c0d7881a8b0bd4c4113c673957b3fb81320393"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.173703/kopia-20250430.0.173703-macOS-arm64.tar.gz"
    sha256 "6c2861630a1ca5f8977a8bd889017f7cfc9219620b21c834e4f2db25642e0c43"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.173703/kopia-20250430.0.173703-linux-x64.tar.gz"
    sha256 "7a1e1fcee09ee23b9c30ba1e30d7e14304eb2a8f4850fabb988718bccd9a3254"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.173703/kopia-20250430.0.173703-linux-arm.tar.gz"
    sha256 "59392b22d0d1d138b77cc3e78f06558e7d9eb401ad6903c951537c72cbe46ffb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250430.0.173703/kopia-20250430.0.173703-linux-arm64.tar.gz"
    sha256 "731cd8bc82b656a30b375103f19c52671208eb74b236649fe229da186f98a41c"
  end

  def install
    bin.install "kopia"
  end
end
