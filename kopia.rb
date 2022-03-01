# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220301.0.133236"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.133236/kopia-20220301.0.133236-macOS-x64.tar.gz"
    sha256 "e7afdff4d552cfc4bad3121f0170e6616bbf549d360ced9afc200929fdaef79a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.133236/kopia-20220301.0.133236-macOS-arm64.tar.gz"
    sha256 "81cafd10e7b8d08baa7e735cbf7de693ef94d48b47145c70ef6df5f3716b07b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.133236/kopia-20220301.0.133236-linux-x64.tar.gz"
    sha256 "90ea1e99c7b3a7f9db4831cb8e7cc985f61c61c5c1f5f3b90103ed608a7b8292"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.133236/kopia-20220301.0.133236-linux-arm.tar.gz"
    sha256 "aa45002c848a8c9a7b83b5cbe3fa7fa19a9a75e88543f4cfa20efe7ecf8a4068"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220301.0.133236/kopia-20220301.0.133236-linux-arm64.tar.gz"
    sha256 "7a4b83fac2be9e6994c683abd2d868ea3a486fae40bcf92f58edd310cdb1e7a2"
  end

  def install
    bin.install "kopia"
  end
end
