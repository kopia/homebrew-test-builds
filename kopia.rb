# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230914.0.144222"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.144222/kopia-20230914.0.144222-macOS-x64.tar.gz"
    sha256 "c73422f7a4f5d2cf901cd80bdadc87e55aabe8aace6368783fa17e24b11949eb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.144222/kopia-20230914.0.144222-macOS-arm64.tar.gz"
    sha256 "6917065a381441ca36ee709c5bcfe39299a974fca6e7328c9a8d56ad4256140d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.144222/kopia-20230914.0.144222-linux-x64.tar.gz"
    sha256 "d267de7f18fc4a4bd59cdebf325c12d03c2b90b7ee11ea87ef56f5d5640a4194"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.144222/kopia-20230914.0.144222-linux-arm.tar.gz"
    sha256 "0d37dc07f449134ea900e909e7e7f3f264db4c580f8f9800beaf27b9c3250750"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230914.0.144222/kopia-20230914.0.144222-linux-arm64.tar.gz"
    sha256 "dab539261a11525b6df748867f96ff6b6f4632752d90fa851ef3a6300f187e14"
  end

  def install
    bin.install "kopia"
  end
end
