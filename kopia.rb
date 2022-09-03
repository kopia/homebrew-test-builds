# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220903.0.213013"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.213013/kopia-20220903.0.213013-macOS-x64.tar.gz"
    sha256 "3cd599eca74fcdcde257cf9b5d8c5605ca0383ce54b48dafcd03bc3858fa4280"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.213013/kopia-20220903.0.213013-macOS-arm64.tar.gz"
    sha256 "13c1ab3d51b943bcb8f29bfa81c22be738a2e5f7bffa3f29fb45243cd3c10000"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.213013/kopia-20220903.0.213013-linux-x64.tar.gz"
    sha256 "cb7f1c664f37ac03f6493dd14cbec87db6442c78262ce9471b837108061fe36b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.213013/kopia-20220903.0.213013-linux-arm.tar.gz"
    sha256 "8f00ad0c852c796556c410077582a820d8c8cf81fc0f42385aa11b88e7be3619"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220903.0.213013/kopia-20220903.0.213013-linux-arm64.tar.gz"
    sha256 "b525200d49dd61dd89c94de723267a977023e19bb09aa8247a8bcbe29501593c"
  end

  def install
    bin.install "kopia"
  end
end
