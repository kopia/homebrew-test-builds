# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210403.0.232520"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232520/kopia-20210403.0.232520-macOS-x64.tar.gz"
    sha256 "b37f649964199206e2eff82e41025b93b8c857100c56c3d5275d7be5275e5529"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232520/kopia-20210403.0.232520-macOS-arm64.tar.gz"
    sha256 "55f1548c3313376917f501d5d75afaec07bfd96fc0dfa132802e9ced19d4637d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232520/kopia-20210403.0.232520-linux-x64.tar.gz"
    sha256 "a84e2cf351b8aef6cc1c020b5f6c648891fdc75b0d1325c22c3c68e4eae288ec"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232520/kopia-20210403.0.232520-linux-arm.tar.gz"
    sha256 "def44399740bb64339c456e081895f1057612ce598c9e6a5211d47f6f6a9c962"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210403.0.232520/kopia-20210403.0.232520-linux-arm64.tar.gz"
    sha256 "86f3aa9bba654e6d0bab3c9964b46e82544e955b13a12745f00452cab2d28eee"
  end

  def install
    bin.install "kopia"
  end
end
