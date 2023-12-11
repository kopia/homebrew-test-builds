# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231211.0.151446"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.151446/kopia-20231211.0.151446-macOS-x64.tar.gz"
    sha256 "51555dd40c7487561315dca13fdd87dd59ef800a0e3f180fd84a7e727e6e7f98"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.151446/kopia-20231211.0.151446-macOS-arm64.tar.gz"
    sha256 "21c3d52407002368ea8014f5be6fe1097e5784a82b9e12cbd71277617a30d529"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.151446/kopia-20231211.0.151446-linux-x64.tar.gz"
    sha256 "2e090fe9a46dc7c10405c670374d394462506743112d68c3de61eef2681d0005"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.151446/kopia-20231211.0.151446-linux-arm.tar.gz"
    sha256 "e316b12dcb93c7116077929a6bb6dd596bfd13d7f1ba1863477f340013e73cf6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231211.0.151446/kopia-20231211.0.151446-linux-arm64.tar.gz"
    sha256 "695a54efbbc6052d58a442e0866d1134e45507da3d247b274b0ba68f728efc6b"
  end

  def install
    bin.install "kopia"
  end
end
