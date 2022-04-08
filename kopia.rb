# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220408.0.42529"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220408.0.42529/kopia-20220408.0.42529-macOS-x64.tar.gz"
    sha256 "83b474764e490d711fc251b02b5a36f133f2430000db4f960a7c7b959e2ffa71"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220408.0.42529/kopia-20220408.0.42529-macOS-arm64.tar.gz"
    sha256 "6e3790d63223a3503d621571fb5f1f95846c022a69414e5009377ae34eb37514"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220408.0.42529/kopia-20220408.0.42529-linux-x64.tar.gz"
    sha256 "427b8c30367f9f7282adda0fcbf6ff7b24b0f6685f2808e33f0097ca06472716"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220408.0.42529/kopia-20220408.0.42529-linux-arm.tar.gz"
    sha256 "f38f5f785e43f25aa8888615b80342d32361b538fcba93b8e047c634f43d8832"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220408.0.42529/kopia-20220408.0.42529-linux-arm64.tar.gz"
    sha256 "cae46e562c9e456d5c13f399ea3caff84b6ddecf11f657754d1043c38467faef"
  end

  def install
    bin.install "kopia"
  end
end
