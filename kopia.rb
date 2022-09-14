# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220913.0.171422"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.171422/kopia-20220913.0.171422-macOS-x64.tar.gz"
    sha256 "8b0746a6da8fca71cfedd65a87175470c75bea69bea94efbc97be75206d70ad6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.171422/kopia-20220913.0.171422-macOS-arm64.tar.gz"
    sha256 "c4a310a8828f8295e578131ad90ea9e719bf1b6b06f7196639a363a8d62daf57"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.171422/kopia-20220913.0.171422-linux-x64.tar.gz"
    sha256 "0a594407f69c2f54f81b77a4d3bc4495f9d515225c3dd0098ff8ae898af38f2f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.171422/kopia-20220913.0.171422-linux-arm.tar.gz"
    sha256 "501eb52ce973c8d0355a9f5d8a91fe251237a9270b32625ac23ca96b669f32ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220913.0.171422/kopia-20220913.0.171422-linux-arm64.tar.gz"
    sha256 "530804a25a9a353293d149b7c8ca877b516c89d7370b60fb00a79936094c285b"
  end

  def install
    bin.install "kopia"
  end
end
