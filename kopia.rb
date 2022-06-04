# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220604.0.35546"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.35546/kopia-20220604.0.35546-macOS-x64.tar.gz"
    sha256 "4192e91ad94ff57bccfbc09a8bb66845acfb368aa9c7fcf1553bd9b6af970afd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.35546/kopia-20220604.0.35546-macOS-arm64.tar.gz"
    sha256 "faf81cf99b3569215b828c088c99edf821b986b33341797f2d496e955a2a56e5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.35546/kopia-20220604.0.35546-linux-x64.tar.gz"
    sha256 "45e8733ac2a06828d248c82f47387be6a88282b68aab35313727188594c40dab"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.35546/kopia-20220604.0.35546-linux-arm.tar.gz"
    sha256 "79e6f263112efaed076407fdc295ec10d9961e0a469697d82f683329e6dd6974"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220604.0.35546/kopia-20220604.0.35546-linux-arm64.tar.gz"
    sha256 "2fddd3e03b51c31e11852bdbed5b0fed793947d98057331346feef69e6de4acb"
  end

  def install
    bin.install "kopia"
  end
end
