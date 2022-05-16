# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220516.0.52857"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.52857/kopia-20220516.0.52857-macOS-x64.tar.gz"
    sha256 "a590939e35f9c4c8f134d7eedd90ca4fc57af0c06756309968343c31f6e8f456"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.52857/kopia-20220516.0.52857-macOS-arm64.tar.gz"
    sha256 "57d23477e170bc3d36edda4aa0849adc13b8c3fa207466017afaf11881571f42"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.52857/kopia-20220516.0.52857-linux-x64.tar.gz"
    sha256 "246d2f31d556f67ba2089d36b54d5c197b8decdaae0038a6789977fd0701ac20"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.52857/kopia-20220516.0.52857-linux-arm.tar.gz"
    sha256 "a80f84ca6f20eff182c83464a8faf1f9bee51e6fd9acf369c73b7f4a42b90267"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.52857/kopia-20220516.0.52857-linux-arm64.tar.gz"
    sha256 "30321e75bb0b84250b0b0d38d7045512b3131217301c7b049c1692795e040fda"
  end

  def install
    bin.install "kopia"
  end
end
