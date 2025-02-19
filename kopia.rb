# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250219.0.5503"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250219.0.5503/kopia-20250219.0.5503-macOS-x64.tar.gz"
    sha256 "17d10ebe56be033d639a2e12d573bcf264f69a1b285262df29196128e5d2d241"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250219.0.5503/kopia-20250219.0.5503-macOS-arm64.tar.gz"
    sha256 "be2aadaa326f7e4d63b346d9e073caad064c2a7b0553bdf6096233976b42d8f6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250219.0.5503/kopia-20250219.0.5503-linux-x64.tar.gz"
    sha256 "1bec11ad1370cad3207bac3a36cb225e574fc46c490fce0e9a6277ae799de9a4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250219.0.5503/kopia-20250219.0.5503-linux-arm.tar.gz"
    sha256 "42862d40ac6aea8ac32e0fa722bb40c37f82d6e3ddaf32ae4f1276035f60e7a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250219.0.5503/kopia-20250219.0.5503-linux-arm64.tar.gz"
    sha256 "9a2b179070d4963252711800dd518971d8cb5e90010458aa0d311c8246c4ce8c"
  end

  def install
    bin.install "kopia"
  end
end
