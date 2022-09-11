# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220911.0.162607"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.162607/kopia-20220911.0.162607-macOS-x64.tar.gz"
    sha256 "f13daf1563d3e4f26d2a5d1e05d950d5417fce9d4c2e9ae31521d5c2306c94aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.162607/kopia-20220911.0.162607-macOS-arm64.tar.gz"
    sha256 "99f423dcac4d62d7e56b2d422a28ffbe24e713748e00c50844ee4e95d0c94de8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.162607/kopia-20220911.0.162607-linux-x64.tar.gz"
    sha256 "8688e9e1542f1eb08da58949126d58938b7f1974107f72ab55b773e1bdc4d31e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.162607/kopia-20220911.0.162607-linux-arm.tar.gz"
    sha256 "9d6f34e37bfc5b539eb46d0ea124965081b8829e217f4aee13a1d3523ce957e7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220911.0.162607/kopia-20220911.0.162607-linux-arm64.tar.gz"
    sha256 "3801a245f7ae9a328042331ff41fc03e56415b7c46810f0359ce98250518fcfe"
  end

  def install
    bin.install "kopia"
  end
end
