# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240309.0.103911"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240309.0.103911/kopia-20240309.0.103911-macOS-x64.tar.gz"
    sha256 "9376ba9b80330b44729a39b4a7cf33cdab7ff8da318c75a689001928fb6dc23a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240309.0.103911/kopia-20240309.0.103911-macOS-arm64.tar.gz"
    sha256 "931321dac502f126b25c46fa954b7dba717ab06d2f11a2c42836265329d667e5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240309.0.103911/kopia-20240309.0.103911-linux-x64.tar.gz"
    sha256 "d10ecd591f4a1ae636490ef65857e1ca66bdfbf5790f2a4b3f533bd882b65f47"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240309.0.103911/kopia-20240309.0.103911-linux-arm.tar.gz"
    sha256 "1c2311121762767653bcdfe00a481774d874f5673f33f980880ca3c6c5097399"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240309.0.103911/kopia-20240309.0.103911-linux-arm64.tar.gz"
    sha256 "96ef1170b1f6b64720fef987c91d8fdc132e49496ea50a504387b4b7ae08ded4"
  end

  def install
    bin.install "kopia"
  end
end
