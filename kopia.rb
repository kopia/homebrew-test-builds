# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251119.0.40248"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.40248/kopia-20251119.0.40248-macOS-x64.tar.gz"
    sha256 "5b79f2abfe1805284fa58c1928bf051f32039f71d92c5f9c8795900a8173de51"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.40248/kopia-20251119.0.40248-macOS-arm64.tar.gz"
    sha256 "9e3dd13007050c3b94e24147053ec3ba16e32090295c21b050330d6432d80ef6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.40248/kopia-20251119.0.40248-linux-x64.tar.gz"
    sha256 "1b6a6ad99e8d66c838cba7376ad33fa6d7d86afc5b184a374290f206cd6d9f62"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.40248/kopia-20251119.0.40248-linux-arm.tar.gz"
    sha256 "f5166803fd342faaf48b67a5196d11b3473513dba42ab12c7848a1b27d4028e0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251119.0.40248/kopia-20251119.0.40248-linux-arm64.tar.gz"
    sha256 "fa8905d5c47bdfa47aef5e1632ed62d81a001967e791cd3fba3d90ce5235753e"
  end

  def install
    bin.install "kopia"
  end
end
