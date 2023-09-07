# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230906.0.201439"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.201439/kopia-20230906.0.201439-macOS-x64.tar.gz"
    sha256 "7c7bc7b3412cf745520b7c99ddf2d1fd0a2a19824c263ec3335b0822d3f51550"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.201439/kopia-20230906.0.201439-macOS-arm64.tar.gz"
    sha256 "34276706abb75ee04f8ceb7856d9e6b2db9b1601c7a509764b237e438390255b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.201439/kopia-20230906.0.201439-linux-x64.tar.gz"
    sha256 "d183b817a5b1df2742ccf7452347196540e1a672e2f72f607c1660554493977e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.201439/kopia-20230906.0.201439-linux-arm.tar.gz"
    sha256 "d9e29b7c68ec2e9adbea7c0d94a7bae0f2fd7dc1163212e95fd47e78c4921203"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.201439/kopia-20230906.0.201439-linux-arm64.tar.gz"
    sha256 "3327326e135f2e00918220bfc9a307fd4e0d68cd9d4788c532d95994445eed83"
  end

  def install
    bin.install "kopia"
  end
end
