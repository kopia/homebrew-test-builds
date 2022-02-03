# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.215925"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215925/kopia-20220202.0.215925-macOS-x64.tar.gz"
    sha256 "71b1b6dea997b65d3300892756a6ed36749cbab09be7b395bf5d71fc551195e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215925/kopia-20220202.0.215925-macOS-arm64.tar.gz"
    sha256 "98d2f705f83f82cb347e9821b588f0cc83e304c16e780aa99d8681b57f3dc888"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215925/kopia-20220202.0.215925-linux-x64.tar.gz"
    sha256 "2a689e8d94cf3fb97224287378ffad7dbdb66fc70d111db3fe166aa9769c97c0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215925/kopia-20220202.0.215925-linux-arm.tar.gz"
    sha256 "138227b1181b0938d43f73494aeef1266e97d695740b32fa45381bbff4614089"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.215925/kopia-20220202.0.215925-linux-arm64.tar.gz"
    sha256 "f81136146a8f539be120869c6da40cd7a66b369edbabb810084595e4cefb2504"
  end

  def install
    bin.install "kopia"
  end
end
