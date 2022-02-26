# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220225.0.205544"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220225.0.205544/kopia-20220225.0.205544-macOS-x64.tar.gz"
    sha256 "4346aaa8e52f6e8fef8f908eab4a46d1906b4dd0da62d9b5ee5b4741bd82dcee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220225.0.205544/kopia-20220225.0.205544-macOS-arm64.tar.gz"
    sha256 "20ea0ca562d39bab1e21e0db166782072f799665b53dd467b883e32578f06205"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220225.0.205544/kopia-20220225.0.205544-linux-x64.tar.gz"
    sha256 "6219906c1382724857c1feee1a26c582616aeea1ed06c67b1c938175268c062c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220225.0.205544/kopia-20220225.0.205544-linux-arm.tar.gz"
    sha256 "b4ceb73c239281762012fc2090a5b49037727c61e1f0601b8a882df6d0721186"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220225.0.205544/kopia-20220225.0.205544-linux-arm64.tar.gz"
    sha256 "25f5f7c12716ff387d6822a18004a4bb247b1fd6b8cd95c375b51e4fd0f1ba3e"
  end

  def install
    bin.install "kopia"
  end
end
