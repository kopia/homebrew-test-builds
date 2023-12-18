# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231217.0.233714"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.233714/kopia-20231217.0.233714-macOS-x64.tar.gz"
    sha256 "26d9d4bb8ceee9877816340ee3cbc7669664605d53d5c72c95d2d39d280b3c40"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.233714/kopia-20231217.0.233714-macOS-arm64.tar.gz"
    sha256 "bd476d491708161507428f45b9a14f87d50609e0bd2a0b0606a1b90af57ea84e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.233714/kopia-20231217.0.233714-linux-x64.tar.gz"
    sha256 "996735cc35c764e718515fd90af6de8aea275e78707e5a82d5b4a3fc350bce4a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.233714/kopia-20231217.0.233714-linux-arm.tar.gz"
    sha256 "6660ff7c9cfd45876b78ae15e3276b273e39aa171ed7dbdbfc68f596cc43dec2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231217.0.233714/kopia-20231217.0.233714-linux-arm64.tar.gz"
    sha256 "39cc11b4c0fae8d4e559918b6f44543d09ae6f784c2795da08b74f96eb756d2d"
  end

  def install
    bin.install "kopia"
  end
end
