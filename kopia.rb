# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251209.0.15319"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.15319/kopia-20251209.0.15319-macOS-x64.tar.gz"
    sha256 "c102f84b687c3e25b8ac84b99447221432879c1ba0bb18fc9a0d89f7ff8c313b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.15319/kopia-20251209.0.15319-macOS-arm64.tar.gz"
    sha256 "4cede16166d3c749e8e888bc8d6f4c1936e8d54fb2977bb72949a5f66a1f6738"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.15319/kopia-20251209.0.15319-linux-x64.tar.gz"
    sha256 "d52e0743ede4ee38118fd5bf0607c6b20ab1f996efe7f551e3f8314ba6101895"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.15319/kopia-20251209.0.15319-linux-arm.tar.gz"
    sha256 "df123e3a8a6392e89ef709cad5dc2f937452f6d456530ba046ee3790af0bf88c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251209.0.15319/kopia-20251209.0.15319-linux-arm64.tar.gz"
    sha256 "7c48e05be2dc49afa418c500d4633934d78f69d07458fa8d9c8d8ac5d74eabab"
  end

  def install
    bin.install "kopia"
  end
end
