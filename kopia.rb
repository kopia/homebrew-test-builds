# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230327.0.3432"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.3432/kopia-20230327.0.3432-macOS-x64.tar.gz"
    sha256 "7a28c80104e8c65b3d0103718b95d68206b949ddaf6259431c22ef29ef46bddc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.3432/kopia-20230327.0.3432-macOS-arm64.tar.gz"
    sha256 "cbbf8a0bd9ef8ab88cf9d906f42a968c753fcd93b5a0c69a29356248e09d75d2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.3432/kopia-20230327.0.3432-linux-x64.tar.gz"
    sha256 "43c543a5e92a6f0726a9b71cea2a4106e683ed258f0aa6bd9fde2f2fb253d27c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.3432/kopia-20230327.0.3432-linux-arm.tar.gz"
    sha256 "b3614b7770235832fcec6d940b9ffb775b1909280fde68a7d3c12a107bb4789b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230327.0.3432/kopia-20230327.0.3432-linux-arm64.tar.gz"
    sha256 "a785ec52f686f54294b93c15cbc62e563ee8924598f8860b146d96163f07630e"
  end

  def install
    bin.install "kopia"
  end
end
