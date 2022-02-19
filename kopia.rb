# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220218.0.211630"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220218.0.211630/kopia-20220218.0.211630-macOS-x64.tar.gz"
    sha256 "e53d69383b47a69c1a9f0f0a0c54654a1e90f1141cc60330c9759d52d5f21561"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220218.0.211630/kopia-20220218.0.211630-macOS-arm64.tar.gz"
    sha256 "b098703bbeceb2fa21204bcada4da0fea9bafc1278c765cc76f2fda0c4b5355d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220218.0.211630/kopia-20220218.0.211630-linux-x64.tar.gz"
    sha256 "c67abedc866abae066ec79bb3db7a1739db80872315f908a7f9c5d7522ed7020"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220218.0.211630/kopia-20220218.0.211630-linux-arm.tar.gz"
    sha256 "7e18d54e6505cbf603c43242859b362e57483730997fc0fb5b682b036ca39fec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220218.0.211630/kopia-20220218.0.211630-linux-arm64.tar.gz"
    sha256 "c9c9cbf60d6d4152f3288dbbad14d2b5dcc828faf9ddce97d5c7c3921e2efcc4"
  end

  def install
    bin.install "kopia"
  end
end
