# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220327.0.85320"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.85320/kopia-20220327.0.85320-macOS-x64.tar.gz"
    sha256 "b653edf672e395f24f37a2bea526926c50d87ea66e7f68a90f289adbfec86d42"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.85320/kopia-20220327.0.85320-macOS-arm64.tar.gz"
    sha256 "fbafcd5e4fedc0365bc1d0cee43912bfbf09cd931411d1cb6889cb82632cbe88"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.85320/kopia-20220327.0.85320-linux-x64.tar.gz"
    sha256 "1d78f385739576c6369f1dfcc4580d03d68cbd44467d5a423d64e73e851d4714"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.85320/kopia-20220327.0.85320-linux-arm.tar.gz"
    sha256 "f11c463d41d870172c63dd4a3e98fcbb7688094738055e1ca1c209db4c3aa46c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.85320/kopia-20220327.0.85320-linux-arm64.tar.gz"
    sha256 "94d3eed71e294d8cb54fbe84fad8cd085adb54b7c39d19b39de0fd32bc1f8eb5"
  end

  def install
    bin.install "kopia"
  end
end
