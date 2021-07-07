# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210706.0.213808"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210706.0.213808/kopia-20210706.0.213808-macOS-x64.tar.gz"
    sha256 "145e76c61856ad5da0df9ccbd28b3bea7a84789687b239115f1012af33ffa10f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210706.0.213808/kopia-20210706.0.213808-macOS-arm64.tar.gz"
    sha256 "ab7d4f625bb8308aff2e4456a00f6487c796a7d1741e1767af638f47019acf08"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210706.0.213808/kopia-20210706.0.213808-linux-x64.tar.gz"
    sha256 "574c6562bd23de1eb32121829e566107e77424b4148f6b5246b49276c5b3d900"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210706.0.213808/kopia-20210706.0.213808-linux-arm.tar.gz"
    sha256 "c0f2f8c7283973aa877e039de52eee87f4168c2b7e81e7c4ca83d59ca75e9563"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210706.0.213808/kopia-20210706.0.213808-linux-arm64.tar.gz"
    sha256 "b7b5c81f0733bf5fe0b5eef23f7f03eea8c406f2972f52d1c6a5222fce539e16"
  end

  def install
    bin.install "kopia"
  end
end
