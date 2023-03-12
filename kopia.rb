# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230312.0.110940"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.110940/kopia-20230312.0.110940-macOS-x64.tar.gz"
    sha256 "a1c147e0cb5670c85b3072aecd4574fc4a62eea11db875c13c22387fa02523f5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.110940/kopia-20230312.0.110940-macOS-arm64.tar.gz"
    sha256 "d0cac6dfe6efb085d4ed28603d295498ddb2188a44db60bcc58bc1874f2f0118"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.110940/kopia-20230312.0.110940-linux-x64.tar.gz"
    sha256 "35d0cd8a65d9357ac9a9f57ebf93b21adf5178e2e0c46e89722d9ca4eaf09e23"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.110940/kopia-20230312.0.110940-linux-arm.tar.gz"
    sha256 "0f60518a5c5d3f5567b4ffbe27e9713356f45eefc12974e277e7b0130e86dca9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.110940/kopia-20230312.0.110940-linux-arm64.tar.gz"
    sha256 "b1bc49c43e5ca7df6958721127beb4127bbd544b3a0f385dd70114e719ba5510"
  end

  def install
    bin.install "kopia"
  end
end
