# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220528.0.103900"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.103900/kopia-20220528.0.103900-macOS-x64.tar.gz"
    sha256 "213889141abeac6dcf87cb6bc011df0f6dbd7c0bc623940b94c461d7d8898136"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.103900/kopia-20220528.0.103900-macOS-arm64.tar.gz"
    sha256 "beebdeb75160d584fa659888bdecc2b8ca01ff0ce78ce394d91cc5ce36ab8ae2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.103900/kopia-20220528.0.103900-linux-x64.tar.gz"
    sha256 "1f4b6422b9cc8bef755d18fa202115245868b6229ed4964e8a1d4431e594bcfe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.103900/kopia-20220528.0.103900-linux-arm.tar.gz"
    sha256 "67dbd0f3652383351a71cea48d71f17d8640e0e469825c65e48451e33b2007da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220528.0.103900/kopia-20220528.0.103900-linux-arm64.tar.gz"
    sha256 "e8373fd50432aae43c4c9a12aaa33f4026e56f1d6eadf20df74bdaba56e96d38"
  end

  def install
    bin.install "kopia"
  end
end
