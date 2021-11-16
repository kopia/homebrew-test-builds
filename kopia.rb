# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211116.0.73926"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211116.0.73926/kopia-20211116.0.73926-macOS-x64.tar.gz"
    sha256 "7bc0059b3f49335147b59a0c8f6f629183857b42de1e0276d9a0dae15d7b9c5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211116.0.73926/kopia-20211116.0.73926-macOS-arm64.tar.gz"
    sha256 "23ed5f69c0ae72efc580ca8c6f720ccce4cf7c4a7b0e79053cc75f2c85f16c40"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211116.0.73926/kopia-20211116.0.73926-linux-x64.tar.gz"
    sha256 "aeeb93ff97c4c50e5fdfa94f2b3568c68e72234f8e02dbf6c24aeae124c49d5f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211116.0.73926/kopia-20211116.0.73926-linux-arm.tar.gz"
    sha256 "a282fb6613a47e167824180e7490183a14b41e4ef0f8339ad69aa0c96a11b001"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211116.0.73926/kopia-20211116.0.73926-linux-arm64.tar.gz"
    sha256 "62676151b3f39df8954a395f67e3a1ab94d747a24b3e8ac46159382960e34b09"
  end

  def install
    bin.install "kopia"
  end
end
