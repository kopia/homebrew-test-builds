# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220216.0.223448"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220216.0.223448/kopia-20220216.0.223448-macOS-x64.tar.gz"
    sha256 "6c7d1a6a9557c6fae987e55d115faa357a6162af3bb87bc37baf76d3cf84fec4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220216.0.223448/kopia-20220216.0.223448-macOS-arm64.tar.gz"
    sha256 "b4617a406a224b98e496973c41baaffcac853c47a58fca0b920d3309264cae7d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220216.0.223448/kopia-20220216.0.223448-linux-x64.tar.gz"
    sha256 "b13c5f9ec835f564ac264e901be0ec8673f99cb305acccf9e975c60f432d6db5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220216.0.223448/kopia-20220216.0.223448-linux-arm.tar.gz"
    sha256 "acec5b04d3fc889940751e58492d66d2c14f3b60418d9722cc3c56e1554b3df5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220216.0.223448/kopia-20220216.0.223448-linux-arm64.tar.gz"
    sha256 "c0109649a12edadd819499d1d89c1d11e25e402e8610897cfca46fc74ad55102"
  end

  def install
    bin.install "kopia"
  end
end
