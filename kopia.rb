# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230314.0.15212"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.15212/kopia-20230314.0.15212-macOS-x64.tar.gz"
    sha256 "6e6fccae9cfc086978d5fa65abc8ec7149db6b171b88e1c2cc84284a721a09b4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.15212/kopia-20230314.0.15212-macOS-arm64.tar.gz"
    sha256 "186a92e441917a32fa0cbfbbc4715cb3c6b3cbd136eb3055c9e98be474534558"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.15212/kopia-20230314.0.15212-linux-x64.tar.gz"
    sha256 "9edde55f19778a8a9944c3427e1d14c477fa7e4f102289ed7c08d37ebff8e787"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.15212/kopia-20230314.0.15212-linux-arm.tar.gz"
    sha256 "a75f1224ba66ddb12730c77217ec66f8629bfabdc86b6e69d6e864814e7b08bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230314.0.15212/kopia-20230314.0.15212-linux-arm64.tar.gz"
    sha256 "0a5433ecd6c58f202ca581e826e73365a3165a86578eabfa8670c2b4b14c0ceb"
  end

  def install
    bin.install "kopia"
  end
end
