# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220306.0.210920"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.210920/kopia-20220306.0.210920-macOS-x64.tar.gz"
    sha256 "6e6a7665057cbfb90fae23ae7c68da68fb6703156a03041bd5e4f7acbc613b4b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.210920/kopia-20220306.0.210920-macOS-arm64.tar.gz"
    sha256 "2cb24275b06efb406e7571d4825e2d83a576fe573ac199622e862f4cec227430"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.210920/kopia-20220306.0.210920-linux-x64.tar.gz"
    sha256 "3556772f456d4461ee7c5d03a6840ef90a9d089aa52ae792dd51f69b63117301"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.210920/kopia-20220306.0.210920-linux-arm.tar.gz"
    sha256 "68c3751d41ff9f98007576e29297714da10121d308acfa20fbf87904af7ec55e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220306.0.210920/kopia-20220306.0.210920-linux-arm64.tar.gz"
    sha256 "6d9fea0e4f4212cae4213b6da11deae493e189d2ab904aa6565a597a8aaddcfa"
  end

  def install
    bin.install "kopia"
  end
end
