# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230829.0.124040"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230829.0.124040/kopia-20230829.0.124040-macOS-x64.tar.gz"
    sha256 "54aff3514eaf5ed492a50b0912a13dfcda15f2e59d58783543a4367690af6bfd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230829.0.124040/kopia-20230829.0.124040-macOS-arm64.tar.gz"
    sha256 "c4d5f1e3a0f9194b0b0b927fe084a68d0a0fd0a6141603682b256b0a94a47890"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230829.0.124040/kopia-20230829.0.124040-linux-x64.tar.gz"
    sha256 "38c3625c81fbba88ce12c5b2deed93f8d8761c36f5b988db100b254b88c3bc67"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230829.0.124040/kopia-20230829.0.124040-linux-arm.tar.gz"
    sha256 "278914a5645222993e0597c1e82b407135411d88746c1f440973a919f2068bf2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230829.0.124040/kopia-20230829.0.124040-linux-arm64.tar.gz"
    sha256 "f8107c1cd2a74ad73eca1d09f9099361fb4adbc8f5439763486178b951bb6750"
  end

  def install
    bin.install "kopia"
  end
end
