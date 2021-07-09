# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210709.0.131457"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.131457/kopia-20210709.0.131457-macOS-x64.tar.gz"
    sha256 "0f6e6de98062a85249624d4be7e9e3aadeed36c8666a15b28d4747089fed3fd3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.131457/kopia-20210709.0.131457-macOS-arm64.tar.gz"
    sha256 "e1f895c5509b7dffe120feb30ab1bd3c2683e1bdb61c2a92bd169b99801eb6fc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.131457/kopia-20210709.0.131457-linux-x64.tar.gz"
    sha256 "d8e3249ce113021de48b03ce8951eef35f5e8dbdd4ba6861694a3a9c5c94a268"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.131457/kopia-20210709.0.131457-linux-arm.tar.gz"
    sha256 "d1e2a6f15b957409a9ac44d97ca30dec09552c19b10c5638cc45186967641d1a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210709.0.131457/kopia-20210709.0.131457-linux-arm64.tar.gz"
    sha256 "5d01e7357dce735ac8c9521d074d9d6fa263c4a94d6709695c792c980ffa4626"
  end

  def install
    bin.install "kopia"
  end
end
