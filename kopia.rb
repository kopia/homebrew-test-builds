# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251013.0.194835"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.194835/kopia-20251013.0.194835-macOS-x64.tar.gz"
    sha256 "59d283dcde60a67b4c78f181b5ebb91d482f90d82b020d1393cb9e8daec80f07"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.194835/kopia-20251013.0.194835-macOS-arm64.tar.gz"
    sha256 "49670787f4393d2ae25bae2ad5c396f315345f52f6c59cae098457c6a81df5a4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.194835/kopia-20251013.0.194835-linux-x64.tar.gz"
    sha256 "37fa858c06049502dfc55330f18ac081fd7e4ccab0028343f1ae1e3a1c46d67d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.194835/kopia-20251013.0.194835-linux-arm.tar.gz"
    sha256 "7ae699304b03e0189ba3cb76acda0076e45953de7dd8c3dec035e6237b911849"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251013.0.194835/kopia-20251013.0.194835-linux-arm64.tar.gz"
    sha256 "79c111f92a1fd8f2ceaa07d128e2ab8f19c7e1ea672bb35f8fd284f42f4ea45e"
  end

  def install
    bin.install "kopia"
  end
end
