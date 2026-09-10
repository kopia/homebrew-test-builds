# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260910.0.224706"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.224706/kopia-20260910.0.224706-macOS-x64.tar.gz"
    sha256 "9c79af1aad6eea6142f8c51803d7d2379bae10788fee54ce5409171c8d913037"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.224706/kopia-20260910.0.224706-macOS-arm64.tar.gz"
    sha256 "8d33cbb47c7284e3e4f09e42ec881c3eaf7053938e6ba0a5936eb1e43b23d78a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.224706/kopia-20260910.0.224706-linux-x64.tar.gz"
    sha256 "4ad35ddacb65371b1934967b40222d8a9e97971e4224d5fe0dac2571a3788bc8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.224706/kopia-20260910.0.224706-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260910.0.224706/kopia-20260910.0.224706-linux-arm64.tar.gz"
    sha256 "7e44c563ca6fcfb3fa44b559d394f32728f0cf7bed1b69c4409ece1b08ef1db1"
  end

  def install
    bin.install "kopia"
  end
end
