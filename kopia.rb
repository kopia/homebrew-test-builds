# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20261003.0.45303"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.45303/kopia-20261003.0.45303-macOS-x64.tar.gz"
    sha256 "43360bd1d81b11f8d1c4232d9bda90ad3922170170f76c245a2e0dfae07e047e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.45303/kopia-20261003.0.45303-macOS-arm64.tar.gz"
    sha256 "3ced87658eb51ec86b6957768b31dd146ba63285c748e48aaa51474c8638a9d8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.45303/kopia-20261003.0.45303-linux-x64.tar.gz"
    sha256 "df1e7b306813e254b0800ed27411d1706395908f4a3fe6c1d31dbea550850ce9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.45303/kopia-20261003.0.45303-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20261003.0.45303/kopia-20261003.0.45303-linux-arm64.tar.gz"
    sha256 "3607819919c30d2567bda76afa0ae6c7263b1ac6ae30f12317307f0a313cc99f"
  end

  def install
    bin.install "kopia"
  end
end
