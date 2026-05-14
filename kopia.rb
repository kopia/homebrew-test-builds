# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260514.0.142332"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.142332/kopia-20260514.0.142332-macOS-x64.tar.gz"
    sha256 "02514d6c14a04a67731de6379522a0ac11bdb4f39c80ad666c7106d718507ac2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.142332/kopia-20260514.0.142332-macOS-arm64.tar.gz"
    sha256 "400efa022f386777d87d4764bdbc22349e9a47467c8e31ba726cff43e7b70cdc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.142332/kopia-20260514.0.142332-linux-x64.tar.gz"
    sha256 "865b47d6c5bd30f3258dbf137c75e670db61e65fa423d5e56ab7b5aa5f101ba6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.142332/kopia-20260514.0.142332-linux-arm.tar.gz"
    sha256 "8661a85036c48937c600918af0ec03a8426209fafe83ef38d40833ca53ae790f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260514.0.142332/kopia-20260514.0.142332-linux-arm64.tar.gz"
    sha256 "ce3df5a6fecaf91fddd754de35d7f24aed3ce00961a779cfd1eee9a5917d4c50"
  end

  def install
    bin.install "kopia"
  end
end
