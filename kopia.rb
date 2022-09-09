# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220908.0.214539"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.214539/kopia-20220908.0.214539-macOS-x64.tar.gz"
    sha256 "b588a9c84ea887741c6bf78fd79d5c14ce603d38d9997b4a630f8d5299946605"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.214539/kopia-20220908.0.214539-macOS-arm64.tar.gz"
    sha256 "8b70e20ac25ec954115a882306b7db48b9e0eb24d4b8a35cadda75e83fa8024e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.214539/kopia-20220908.0.214539-linux-x64.tar.gz"
    sha256 "8be0e6438b5d7c906a852e6bc6d3d78d24039d2edfeefa11ab79b5f841ed1263"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.214539/kopia-20220908.0.214539-linux-arm.tar.gz"
    sha256 "c83191b11c79015b4f4eb18968d7d670bc6056d8d32bb98f86bba7abe4ee3404"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220908.0.214539/kopia-20220908.0.214539-linux-arm64.tar.gz"
    sha256 "c8c46b3c370e3c26aae85aecedd2308f25a74d9117412dcd49e56b1a766659d6"
  end

  def install
    bin.install "kopia"
  end
end
