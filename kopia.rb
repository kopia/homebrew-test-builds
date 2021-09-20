# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210919.0.215447"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215447/kopia-20210919.0.215447-macOS-x64.tar.gz"
    sha256 "16560b7055a874a8156c36bbb2156a220f97dd7aebf427abd44dc435723d200c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215447/kopia-20210919.0.215447-macOS-arm64.tar.gz"
    sha256 "5247b087fa4fa02fe02939ebbb62334382a3f4114cb55f5026a6f9e3c9e1dbe5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215447/kopia-20210919.0.215447-linux-x64.tar.gz"
    sha256 "331d400acbd7e1701dfa13466986867200ec975706df5ddf4c175de5f32c193e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215447/kopia-20210919.0.215447-linux-arm.tar.gz"
    sha256 "bc8e778072a137648314e953836237dba4b2fad6749244f8d47b2a1ad7b2d204"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210919.0.215447/kopia-20210919.0.215447-linux-arm64.tar.gz"
    sha256 "fac191342600a5367c8a1e4cf9493e345d3da0c41e3b0bb2653bb3e9fd253126"
  end

  def install
    bin.install "kopia"
  end
end
