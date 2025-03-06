# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250306.0.191441"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.191441/kopia-20250306.0.191441-macOS-x64.tar.gz"
    sha256 "e196e90c47b9a0ad1a8d88bafb67f98092ee426c7bb544b9ba06f91deaffe991"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.191441/kopia-20250306.0.191441-macOS-arm64.tar.gz"
    sha256 "bc7dfa420b8fb138dc044c0a580a211008acc6339a030c9c3166f82881a13213"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.191441/kopia-20250306.0.191441-linux-x64.tar.gz"
    sha256 "e3d9fa2060ea6c5bfd1815eb084d6882327a398fdfafb689852351fa3db42a0c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.191441/kopia-20250306.0.191441-linux-arm.tar.gz"
    sha256 "42188ba6db09d69c4850ca7d83d4cfc63bf05a2a4455cb0fd34761328259cf5a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250306.0.191441/kopia-20250306.0.191441-linux-arm64.tar.gz"
    sha256 "bb1715e1f888b9eb1aeb9c380480bcef79998b7ca622fc7b7a6291969ea53e01"
  end

  def install
    bin.install "kopia"
  end
end
