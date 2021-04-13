# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210413.0.80846"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80846/kopia-20210413.0.80846-macOS-x64.tar.gz"
    sha256 "b5174bc33cc3c437b7a8224c912423d5a9bf504bd8969edf72895b32db8c2531"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80846/kopia-20210413.0.80846-macOS-arm64.tar.gz"
    sha256 "794c22af6129c699f8b29fb352c64e8f1b2cde6891b569f5ebac2f043ce306f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80846/kopia-20210413.0.80846-linux-x64.tar.gz"
    sha256 "fc6dd470a3a761003218f1b8dbab88acf4498f5c51406586200147799a5c0157"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80846/kopia-20210413.0.80846-linux-arm.tar.gz"
    sha256 "4fa7acca2650c4d8d7bb7e7dc6ef52e32e2e8a044e485182c84db23c8c599782"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210413.0.80846/kopia-20210413.0.80846-linux-arm64.tar.gz"
    sha256 "8482a68e90cd3e69f7e4ab436ba4607d4c2a5eceb8b6220137daeed6a97df126"
  end

  def install
    bin.install "kopia"
  end
end
