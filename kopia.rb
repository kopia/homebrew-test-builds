# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230413.0.201136"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.201136/kopia-20230413.0.201136-macOS-x64.tar.gz"
    sha256 "5c5b15e64d8a99400a78bd20e9b4d6339f1c8570d85f07ea4e0b6344004ed785"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.201136/kopia-20230413.0.201136-macOS-arm64.tar.gz"
    sha256 "6e648c4e4fcc554734767f689cdfc3c23519079245eb8f9e1f5ba407b8fd6dc7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.201136/kopia-20230413.0.201136-linux-x64.tar.gz"
    sha256 "0c1159038c4d625017b05c7dda9a3d761e0a22399a450965610098bac910919a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.201136/kopia-20230413.0.201136-linux-arm.tar.gz"
    sha256 "23b23f25129b7280665553ac64702e8eccaebe35d647dc6f98cca496b16bfab5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.201136/kopia-20230413.0.201136-linux-arm64.tar.gz"
    sha256 "3f1c84171a242a76fb687e428c9ef64223aad76e1e98452e5d1decdb786e8577"
  end

  def install
    bin.install "kopia"
  end
end
