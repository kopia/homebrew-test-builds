# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220202.0.73802"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.73802/kopia-20220202.0.73802-macOS-x64.tar.gz"
    sha256 "272525d1b75f2aa9df5c7adf7a8aefddde0138af1198f8cadc2acc5353da2e03"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.73802/kopia-20220202.0.73802-macOS-arm64.tar.gz"
    sha256 "409caecb58d6de2ccf5c144d536637edcc29871eff53c187b573a6fda64fb9df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.73802/kopia-20220202.0.73802-linux-x64.tar.gz"
    sha256 "c99cd5bd46a823dd5b0b7b00a9a5d54b4618e0a32de387609677f555d63e1dd0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.73802/kopia-20220202.0.73802-linux-arm.tar.gz"
    sha256 "e782a3e2ba889c188019520c5af772cf8d26222d7367cc373048a38f6fc281af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220202.0.73802/kopia-20220202.0.73802-linux-arm64.tar.gz"
    sha256 "2580d105def7d969e868ebaeb5364edd5696b7b0882b31893da8df8be16195f5"
  end

  def install
    bin.install "kopia"
  end
end
