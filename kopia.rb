# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241117.0.101500"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.101500/kopia-20241117.0.101500-macOS-x64.tar.gz"
    sha256 "c54672378fb53e272d69a7e36f2f906e284a24268978f69663a68994f6633ab2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.101500/kopia-20241117.0.101500-macOS-arm64.tar.gz"
    sha256 "27916ddf62b04907c6f0d2da36ae38bd4abc346c39f79ab5896014c47c7ea03c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.101500/kopia-20241117.0.101500-linux-x64.tar.gz"
    sha256 "a2a795677238588e85cf76c1351734cccd25b98d082a85b1caf0ec51032f9794"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.101500/kopia-20241117.0.101500-linux-arm.tar.gz"
    sha256 "b8190e055b33d04c0f37936de4093acdc364a11a9770ef38d79c1c58f3f62396"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241117.0.101500/kopia-20241117.0.101500-linux-arm64.tar.gz"
    sha256 "6aeb9672042b8b50b028f1627c3ee4902dbcbb45e42cab06f17e686ca45af2f7"
  end

  def install
    bin.install "kopia"
  end
end
