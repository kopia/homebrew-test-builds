# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250924.0.32040"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.32040/kopia-20250924.0.32040-macOS-x64.tar.gz"
    sha256 "b33594f6318cd24fc2f1edd36077381bec33c21527980fb1b303c0a53b475f4b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.32040/kopia-20250924.0.32040-macOS-arm64.tar.gz"
    sha256 "d834f3321a6182fac796ace315fb48502506cfb5449b905f7c1aec8b427ea24a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.32040/kopia-20250924.0.32040-linux-x64.tar.gz"
    sha256 "444570de91065d849e0551063fd4764cbd12a0d27c39550e820a70ff1a5f4a37"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.32040/kopia-20250924.0.32040-linux-arm.tar.gz"
    sha256 "44e345b814576dbeef79867860e7a05440c4f65868298994edf02fa923dfabed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250924.0.32040/kopia-20250924.0.32040-linux-arm64.tar.gz"
    sha256 "5954329bbef65b5698465d6fe89d427908af7c3d1488bd254689d3c497448941"
  end

  def install
    bin.install "kopia"
  end
end
