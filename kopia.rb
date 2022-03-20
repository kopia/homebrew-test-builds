# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220319.0.220138"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.220138/kopia-20220319.0.220138-macOS-x64.tar.gz"
    sha256 "6f004efa618250b1b682fc5b764a278073c837bdc36cfa3cfba9ccd7c55fa2fe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.220138/kopia-20220319.0.220138-macOS-arm64.tar.gz"
    sha256 "df6644fd89447a0cb45352b230f9117c811f58ab6db9ad40692db3d28c6859d3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.220138/kopia-20220319.0.220138-linux-x64.tar.gz"
    sha256 "b833ac68e16d49770a300b133dc776b66e70d83e82ad1560a20a1a868b71057b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.220138/kopia-20220319.0.220138-linux-arm.tar.gz"
    sha256 "e60fbac37e7e8eb374e0bf6c6c6e2b2b12a0a414de90d1ee8a48a25109a3e851"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220319.0.220138/kopia-20220319.0.220138-linux-arm64.tar.gz"
    sha256 "b04ea99d95a1b9e01c54173fe1724c1c20c9dd9f8ef421e4e1aa4cd319e4dfc2"
  end

  def install
    bin.install "kopia"
  end
end
