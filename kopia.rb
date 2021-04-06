# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210405.0.210553"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210553/kopia-20210405.0.210553-macOS-x64.tar.gz"
    sha256 "08bbb582533e3a0a608d9db8a624dad0f1f73c7679d6e8cbfbbccaa8222e860a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210553/kopia-20210405.0.210553-macOS-arm64.tar.gz"
    sha256 "c3bc033c93a199031d916dfdd57f6c27fb82c7d62118f6e97fb6da9cccaf748c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210553/kopia-20210405.0.210553-linux-x64.tar.gz"
    sha256 "87edc55ce78824057df8bca8aacd1f5294eee51c8859118c0f7c2f74d84a4aa9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210553/kopia-20210405.0.210553-linux-arm.tar.gz"
    sha256 "8e58b406c430b8cb12c6940c68974c6e13a2ec14134aa157510f3228b496aa85"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.210553/kopia-20210405.0.210553-linux-arm64.tar.gz"
    sha256 "ca31acefbb9891865a7c79e75384dff09b19baf835015c69b9ad97f775f971e6"
  end

  def install
    bin.install "kopia"
  end
end
