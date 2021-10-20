# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211020.0.73324"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.73324/kopia-20211020.0.73324-macOS-x64.tar.gz"
    sha256 "97624400dc10b411091dd46acbc26a8400d38dfa85a7cc2aedd4d67479a0a483"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.73324/kopia-20211020.0.73324-macOS-arm64.tar.gz"
    sha256 "bb4575900125cbeb2de7d557e2ccecf268496e1e5571227b432c6e41af6ab647"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.73324/kopia-20211020.0.73324-linux-x64.tar.gz"
    sha256 "a8e47fc0a6666f2079e89e814b29dc18435e680af141b4096fa14d7903200d17"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.73324/kopia-20211020.0.73324-linux-arm.tar.gz"
    sha256 "a176538a6b9d1289dad7ae60fb26040b226e66a23d4869fea9310839153b92b9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211020.0.73324/kopia-20211020.0.73324-linux-arm64.tar.gz"
    sha256 "aad6ae8ac15e8774895a89528d621ef8d463e55b3b57a66e6902343d03d434d9"
  end

  def install
    bin.install "kopia"
  end
end
