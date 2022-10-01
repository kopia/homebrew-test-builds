# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220930.0.152043"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220930.0.152043/kopia-20220930.0.152043-macOS-x64.tar.gz"
    sha256 "7148cc0383893f593db15c5916cb240094be1980f2e8cf0f251baf520543d912"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220930.0.152043/kopia-20220930.0.152043-macOS-arm64.tar.gz"
    sha256 "12f0ba6a48f0f810fae45645186a2e38ef4fe585d0bffdecb84f06057e295953"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220930.0.152043/kopia-20220930.0.152043-linux-x64.tar.gz"
    sha256 "a85f317130d6c13c5274132d36d451770735f343a5e9592b2b310a535712174c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220930.0.152043/kopia-20220930.0.152043-linux-arm.tar.gz"
    sha256 "94074b650375b6c656d49ecfaf286d28c0828dae7e972c02ce199ede58ff95cf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220930.0.152043/kopia-20220930.0.152043-linux-arm64.tar.gz"
    sha256 "5a588237295ae9aa2f657ffffb6c17c61c25af072c5fef37fd63c4422a03810e"
  end

  def install
    bin.install "kopia"
  end
end
