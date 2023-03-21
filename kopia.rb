# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230320.0.232127"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.232127/kopia-20230320.0.232127-macOS-x64.tar.gz"
    sha256 "9bdf3c092c13902543494e214cf3fe2117ea352af4457afeed60eff3bc6bc144"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.232127/kopia-20230320.0.232127-macOS-arm64.tar.gz"
    sha256 "e38afd0973078754bcd467bbf691e2ed7c1f1d1de19c6ddbbd24e2db368a0c79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.232127/kopia-20230320.0.232127-linux-x64.tar.gz"
    sha256 "27c7c9c415b77debab879cc979d89b72ecaf84670a7aa93ecfb5be660668a7ec"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.232127/kopia-20230320.0.232127-linux-arm.tar.gz"
    sha256 "35cfa949ee670130d0adf7bd6f0c1ee319db0f58f81261c67fc71b890276632e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230320.0.232127/kopia-20230320.0.232127-linux-arm64.tar.gz"
    sha256 "a8848dfb26a80c010d3b9720da17f93a085ee19ebfe39c514e228007ee364b22"
  end

  def install
    bin.install "kopia"
  end
end
