# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220928.0.204438"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.204438/kopia-20220928.0.204438-macOS-x64.tar.gz"
    sha256 "1f54afeb9ffb8aca516e379e54ab955aaca9d4948438cb19efba3627029a5466"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.204438/kopia-20220928.0.204438-macOS-arm64.tar.gz"
    sha256 "dfa71188bee231907fce408ce48a7a0c889dd5d0a90dab07cdbef2241896b352"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.204438/kopia-20220928.0.204438-linux-x64.tar.gz"
    sha256 "b0fa83c709f22e6ea695f385a48e1311d41af22060b8bdad5d3a7401ff1417aa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.204438/kopia-20220928.0.204438-linux-arm.tar.gz"
    sha256 "dea862b3f79806f35de8fd23057b3e727479b97797b6d3386c39d730720f3803"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220928.0.204438/kopia-20220928.0.204438-linux-arm64.tar.gz"
    sha256 "4c7c997f3fb0362fbd480d5a71c5aa17e45bf31cdb757f15d49fddd870ae4f39"
  end

  def install
    bin.install "kopia"
  end
end
