# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220207.0.114027"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.114027/kopia-20220207.0.114027-macOS-x64.tar.gz"
    sha256 "eb67c77be0037c12466e5d2661d915ee53be503efab766f54dff17e6107c4d80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.114027/kopia-20220207.0.114027-macOS-arm64.tar.gz"
    sha256 "afceb0c886821fd2aedfba523925a3e938d987d77ae8f6435771fca27c1d1923"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.114027/kopia-20220207.0.114027-linux-x64.tar.gz"
    sha256 "d9bc1301019ad3b296f83f4259810d2db5aabef43de704a8541405e72e587345"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.114027/kopia-20220207.0.114027-linux-arm.tar.gz"
    sha256 "c72be59a6dff95aa738541301bc7cdde18ad3ce68efd1954ddd258fbcc723214"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220207.0.114027/kopia-20220207.0.114027-linux-arm64.tar.gz"
    sha256 "bb8c3992e3d8a838b610fedf3f03692c8da88f4231ae73a41d690c4ef87f9905"
  end

  def install
    bin.install "kopia"
  end
end
