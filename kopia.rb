# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230720.0.63940"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.63940/kopia-20230720.0.63940-macOS-x64.tar.gz"
    sha256 "139905f42aadf3c2f1c32afde6619c1e3babf4a31feed753ac295ddd9a5645e6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.63940/kopia-20230720.0.63940-macOS-arm64.tar.gz"
    sha256 "6157dcf7b332d735c0b3c9259c7566f222ecffe930519c90143a5882397dfb92"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.63940/kopia-20230720.0.63940-linux-x64.tar.gz"
    sha256 "05a7f406d49de91d1be5363557581ef332ee95abd841cc3ecde23b536328c56a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.63940/kopia-20230720.0.63940-linux-arm.tar.gz"
    sha256 "10caa2a98a9e8702518046b231b52c398afd5420d025e80b083acd8a64e8c3c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230720.0.63940/kopia-20230720.0.63940-linux-arm64.tar.gz"
    sha256 "72b48df4a98074c76f34877e1a3c8f9a81256d0c13ddf61569aee02196055ca7"
  end

  def install
    bin.install "kopia"
  end
end
