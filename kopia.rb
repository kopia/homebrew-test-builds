# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211115.0.194642"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211115.0.194642/kopia-20211115.0.194642-macOS-x64.tar.gz"
    sha256 "4f43a8ad0389b222e53061e4a3264d50c0e9165dd726d296be3bd533ab3ce570"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211115.0.194642/kopia-20211115.0.194642-macOS-arm64.tar.gz"
    sha256 "c5d01a6c171a7bbb74bb41269b200ea5bb4f13ff3ce7b538f90fafcb66e67692"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211115.0.194642/kopia-20211115.0.194642-linux-x64.tar.gz"
    sha256 "2fce89ed2934ed81378817dbe9f2002f5854908faa2b793aa2d36dcfb0a03c2d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211115.0.194642/kopia-20211115.0.194642-linux-arm.tar.gz"
    sha256 "24e592f2897e52c467a0b505c3a08ae136df47c57c85194dec45f3785c35d6a8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211115.0.194642/kopia-20211115.0.194642-linux-arm64.tar.gz"
    sha256 "a903b10169765f9e1d3c3d41f5647fed7c0ba5d7ac9e05e3b4352e2cf6fec268"
  end

  def install
    bin.install "kopia"
  end
end
