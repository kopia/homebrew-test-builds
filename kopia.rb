# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210919.0.215924"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215924/kopia-20210919.0.215924-macOS-x64.tar.gz"
    sha256 "cb862fee7a406266b6e0a037d6b37b7da0cf165542a29d192a44d83e5f6f498c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215924/kopia-20210919.0.215924-macOS-arm64.tar.gz"
    sha256 "11c22252cc8b2a7684a74dbe7f72462ab98bbb9ab649b8a795c0dc73ced32387"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215924/kopia-20210919.0.215924-linux-x64.tar.gz"
    sha256 "a1e5f9a633abdf61262a2adb6c977d9e4eaf0ccd7b0b942bccdd1698d0c31443"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215924/kopia-20210919.0.215924-linux-arm.tar.gz"
    sha256 "23741c6d0d9b961ad65633215a889e869a493e970b6244224b2bbb4b74112d18"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215924/kopia-20210919.0.215924-linux-arm64.tar.gz"
    sha256 "4fdd2e75d8fd1749816d4fd6aa29dd21bbb0390ae1e29a3bd002c0613c2ada39"
  end

  def install
    bin.install "kopia"
  end
end
