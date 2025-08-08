# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250808.0.214135"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.214135/kopia-20250808.0.214135-macOS-x64.tar.gz"
    sha256 "5d3db1bfd23ce31d981067673365348197f66261da5c4aa95e1c4cd1104a964a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.214135/kopia-20250808.0.214135-macOS-arm64.tar.gz"
    sha256 "33629785cf5d3029edc0c7f056a8d80559a99da0572ff87bd47bcf1a6d575b62"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.214135/kopia-20250808.0.214135-linux-x64.tar.gz"
    sha256 "ccedade90acbc56b8b8f144519629ef5670e20d7422045800d7254ebed6dfcca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.214135/kopia-20250808.0.214135-linux-arm.tar.gz"
    sha256 "bb02f4a3666bff514cb88e2b031dca42124846331d1544fe4e635ca4ed6a1ab4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250808.0.214135/kopia-20250808.0.214135-linux-arm64.tar.gz"
    sha256 "906a94ab05d2c38417ecbe078fb9a620be0ccaa589337ee073d4d50d77fb9f49"
  end

  def install
    bin.install "kopia"
  end
end
