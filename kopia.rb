# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210518.0.92226"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.92226/kopia-20210518.0.92226-macOS-x64.tar.gz"
    sha256 "5bd19e8dc239c0893a8eeb363d524fa021cea949f4856f442a1317bc27b1fe7b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.92226/kopia-20210518.0.92226-macOS-arm64.tar.gz"
    sha256 "2da8efc672541ecd9ec9fc1795b1a3e0e8f413a2ed5887cfc4f996b227611eeb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.92226/kopia-20210518.0.92226-linux-x64.tar.gz"
    sha256 "680818ad31e45452018047a77fec6849d0b781671edbe3f47af50ec333c1bf0f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.92226/kopia-20210518.0.92226-linux-arm.tar.gz"
    sha256 "ec5d0bd1b0af75af05345542ed42947e5007c2b6261b817f4c14b44aa9b7b037"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210518.0.92226/kopia-20210518.0.92226-linux-arm64.tar.gz"
    sha256 "cd78f43d2da03cae6ef35bee14bc12621aa856d3b53722df2a17200551c5541b"
  end

  def install
    bin.install "kopia"
  end
end
