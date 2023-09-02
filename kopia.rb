# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230902.0.160453"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.160453/kopia-20230902.0.160453-macOS-x64.tar.gz"
    sha256 "c99b5179165e1f0a5f40605ab140746abfd759a1da0f43bf4b87fc0f0f4ff1d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.160453/kopia-20230902.0.160453-macOS-arm64.tar.gz"
    sha256 "14c36b4b5035f203c4d5fecd847cadcf5ff687f086f21a609ca9a1188f847c63"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.160453/kopia-20230902.0.160453-linux-x64.tar.gz"
    sha256 "db13012e5868505d7e0e203cd36ca0abf293c1ac75e1b1f904a969a012b8f303"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.160453/kopia-20230902.0.160453-linux-arm.tar.gz"
    sha256 "69f268ded6309824908055e92246070b4368ca9004e6156847ae710eec0e2821"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230902.0.160453/kopia-20230902.0.160453-linux-arm64.tar.gz"
    sha256 "ec094a63ed552996c81294731bb04ccfff0ad638785a9179c273c02713351a85"
  end

  def install
    bin.install "kopia"
  end
end
