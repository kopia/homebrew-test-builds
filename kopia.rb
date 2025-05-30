# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250530.0.5842"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.5842/kopia-20250530.0.5842-macOS-x64.tar.gz"
    sha256 "1b4b7bf3ee0d77ee14e63bd32a7c0d3f58090b79ea347495aa2e7dd7e59e5e89"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.5842/kopia-20250530.0.5842-macOS-arm64.tar.gz"
    sha256 "0eaea3c64de3b4a3981065899e036f556d098247c3379cbe9ac24d698f1babd7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.5842/kopia-20250530.0.5842-linux-x64.tar.gz"
    sha256 "dae0a8e9682edf30e345cfafcde875c28c60f6a76a70295c4ed56935ddc9d384"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.5842/kopia-20250530.0.5842-linux-arm.tar.gz"
    sha256 "369a5d386cc79f7b476b65a9b0a8084d677d926bf1d19e3fdc2cb9ccfbe6efe1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250530.0.5842/kopia-20250530.0.5842-linux-arm64.tar.gz"
    sha256 "308e354aef08dd31476e9ae97561ebc9aa5d14ae52ec6b4d37c337e7a9e1bd7c"
  end

  def install
    bin.install "kopia"
  end
end
