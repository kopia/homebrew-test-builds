# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251001.0.223030"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.223030/kopia-20251001.0.223030-macOS-x64.tar.gz"
    sha256 "656b7486f32a38de40edeea09f8a77ed7e68cb68186b1f762eac118d2acf01c5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.223030/kopia-20251001.0.223030-macOS-arm64.tar.gz"
    sha256 "7c0a5442e69f08cd9bc33ea621c6d89dc20b822b94698867d177e50692e935bd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.223030/kopia-20251001.0.223030-linux-x64.tar.gz"
    sha256 "55a5dac2be1543545ea03c5e40429592ed09859304a4c839d00bc4752de6d080"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.223030/kopia-20251001.0.223030-linux-arm.tar.gz"
    sha256 "0c942a5154e95655229403e031fa9c76debbd1f90578e3024e50bd12c3d25791"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251001.0.223030/kopia-20251001.0.223030-linux-arm64.tar.gz"
    sha256 "f883a71f05273e995b2088c0f07044de86d035b22c75bfea12e5528280219e79"
  end

  def install
    bin.install "kopia"
  end
end
