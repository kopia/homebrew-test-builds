# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211110.0.85953"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211110.0.85953/kopia-20211110.0.85953-macOS-x64.tar.gz"
    sha256 "0c515fbef2669e96cb179c739120bd5fbcf7cdb153fdeb8ff0febf2e0c43d6c8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211110.0.85953/kopia-20211110.0.85953-macOS-arm64.tar.gz"
    sha256 "d0a376257f3802fe1a1969b6b79559ad12ba7f91266c5194e892ae73c76f1d4e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211110.0.85953/kopia-20211110.0.85953-linux-x64.tar.gz"
    sha256 "4a7cf309e7823b909e5443ebaa52ef8a0c72f504614b98ecd8ab135d846af237"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211110.0.85953/kopia-20211110.0.85953-linux-arm.tar.gz"
    sha256 "a57e1100a0ad2b51c50c75371764b1778e89ec85ab173d499c6531b81b653bd6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211110.0.85953/kopia-20211110.0.85953-linux-arm64.tar.gz"
    sha256 "03e83f8580e50468a5ffe92fd06c1c533a28f8d338d44d02919fb6c403f2e86b"
  end

  def install
    bin.install "kopia"
  end
end
