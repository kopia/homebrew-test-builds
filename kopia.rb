# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221101.0.203234"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221101.0.203234/kopia-20221101.0.203234-macOS-x64.tar.gz"
    sha256 "42c3987627437dde01bf9c0e375cfc4361e4404a3c384101da6ec82e9dacfca0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221101.0.203234/kopia-20221101.0.203234-macOS-arm64.tar.gz"
    sha256 "72187870ff7acb7a4837afc38865ad645eb57adf3141635c6030fd86c0810196"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221101.0.203234/kopia-20221101.0.203234-linux-x64.tar.gz"
    sha256 "096490ef63c48aaaf9b1f82fb30b5d8eacdbf738366537669090beca7bfe6089"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221101.0.203234/kopia-20221101.0.203234-linux-arm.tar.gz"
    sha256 "9c0457fc749622f696b4f6c8b3aef7dc9bf1d54164205ab5220b4b397a7bb85f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221101.0.203234/kopia-20221101.0.203234-linux-arm64.tar.gz"
    sha256 "4e17950be985f0d6286475a86c614ae04aa595ba678853e4afd37964c0cb2f58"
  end

  def install
    bin.install "kopia"
  end
end
