# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211017.0.163254"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.163254/kopia-20211017.0.163254-macOS-x64.tar.gz"
    sha256 "ac072d1222a139b77f4a1d15b4378f746e80db9e36d446b3a00a8eb8037f2a7e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.163254/kopia-20211017.0.163254-macOS-arm64.tar.gz"
    sha256 "dbfe64aa744299d215244c4f9fecb191f6347ecaa97b1b0c29d4fc397edba414"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.163254/kopia-20211017.0.163254-linux-x64.tar.gz"
    sha256 "6191ea988378121b138b71e5506f00ede8a6069853d60bd198fef715ade1961a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.163254/kopia-20211017.0.163254-linux-arm.tar.gz"
    sha256 "a360b872fc76c7c652378173620be43229df4abde044d2b8f8a37794bceb0706"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.163254/kopia-20211017.0.163254-linux-arm64.tar.gz"
    sha256 "be791d8bccf3aa9d791cac6090066e5a76dc86fb473923ce0763d4b6a0aabcfb"
  end

  def install
    bin.install "kopia"
  end
end
