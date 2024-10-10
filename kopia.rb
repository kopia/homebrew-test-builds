# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241010.0.102234"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241010.0.102234/kopia-20241010.0.102234-macOS-x64.tar.gz"
    sha256 "c70024ebb812b0240453994d79e0ba907c2e43bd071738057c08bd5cb70ac20b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241010.0.102234/kopia-20241010.0.102234-macOS-arm64.tar.gz"
    sha256 "6ad5162a00b1c3bbe0e8d7abcb513e00c7def294a35048a3206975485e6782dd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241010.0.102234/kopia-20241010.0.102234-linux-x64.tar.gz"
    sha256 "3529a84c2953888dd1488725f65171ee62a05d3d959eb15174da7a3cfca1fbb3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241010.0.102234/kopia-20241010.0.102234-linux-arm.tar.gz"
    sha256 "4a0b6cfbab11d997f303b4f09863257baa535a5e015384eb0b09fc0b73c0db7c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241010.0.102234/kopia-20241010.0.102234-linux-arm64.tar.gz"
    sha256 "6e77107d97a0a77d7cbf80da8096c740bbcba46faa0d37500eac9feedec9f1e6"
  end

  def install
    bin.install "kopia"
  end
end
