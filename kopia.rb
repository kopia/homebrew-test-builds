# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211213.0.220750"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.220750/kopia-20211213.0.220750-macOS-x64.tar.gz"
    sha256 "ee31e2e7f8b26ef1c606a585c2d7bc9e2dc858c7f1b773d927528a0a4bd68c10"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.220750/kopia-20211213.0.220750-macOS-arm64.tar.gz"
    sha256 "2dfd1be956de6d5e1f0b8a0285e3bc31cbc9485e3b07bcac8bbf560f455978c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.220750/kopia-20211213.0.220750-linux-x64.tar.gz"
    sha256 "ea383f26d5e38f5386f356bb79555b02972461bef682df4ab30919f77ee44b4a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.220750/kopia-20211213.0.220750-linux-arm.tar.gz"
    sha256 "03cb2fc3bb09f72502a43b12b483c71550daa4e4bbdf2c769240c2c8ca92adc5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.220750/kopia-20211213.0.220750-linux-arm64.tar.gz"
    sha256 "a329f79d3501affe89d063f655df5c00b5b6d1c40e0ea10a884ff07fc6f377e4"
  end

  def install
    bin.install "kopia"
  end
end
