# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220710.0.132641"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.132641/kopia-20220710.0.132641-macOS-x64.tar.gz"
    sha256 "b3c5c81c1d73dac57e70e5d60ece2dab6b07f01f316009d70d99ef962067e56f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.132641/kopia-20220710.0.132641-macOS-arm64.tar.gz"
    sha256 "5ac91482c61d44dbec447e74bb2ca76db0ad8a1d150a31495e9eef2401a2f66e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.132641/kopia-20220710.0.132641-linux-x64.tar.gz"
    sha256 "a9dbbb7bd5fc6c46f70412e15078118ed5bcccc9aee19e687ffd9a610fa4add1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.132641/kopia-20220710.0.132641-linux-arm.tar.gz"
    sha256 "be4b9f9cf74ae5c19df5b4382f8be2dd655af3097ff1fd6c31837553b389dad1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220710.0.132641/kopia-20220710.0.132641-linux-arm64.tar.gz"
    sha256 "88c1ee9bb5f43532823409e234666e5b80af819e43543d8392571e1536a2f069"
  end

  def install
    bin.install "kopia"
  end
end
