# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210421.0.172600"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.172600/kopia-20210421.0.172600-macOS-x64.tar.gz"
    sha256 "22e62f822b048a36ca727a8a420f623ba260f2805849e96de8cfb45790b09cea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.172600/kopia-20210421.0.172600-macOS-arm64.tar.gz"
    sha256 "148a6745240d2bf996a96284f65b05fd574abefba7938780bb8b3187688d1aaa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.172600/kopia-20210421.0.172600-linux-x64.tar.gz"
    sha256 "048423ee35ca42d1403547e347c46b99b93f14529b8d8936643d77912aea231c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.172600/kopia-20210421.0.172600-linux-arm.tar.gz"
    sha256 "80cc1946ecd4fb5fb160453061ac360ff5c6f2344dbc1dd03a0e21f54a9c86eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210421.0.172600/kopia-20210421.0.172600-linux-arm64.tar.gz"
    sha256 "7de73011f7a82a94aec01ef23fee3911472c95e88595197e49c07b0d29d59d68"
  end

  def install
    bin.install "kopia"
  end
end
