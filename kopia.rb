# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240404.0.184711"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.184711/kopia-20240404.0.184711-macOS-x64.tar.gz"
    sha256 "244bb632b05a4fa690aec5fc891ec7a9d9cbb142b892500b98fad9d01faee754"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.184711/kopia-20240404.0.184711-macOS-arm64.tar.gz"
    sha256 "0f7f9d821ecab9f838489c2524bbb1f3ac136cf9de04d860012ffbb107e83ad2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.184711/kopia-20240404.0.184711-linux-x64.tar.gz"
    sha256 "a21ab35d6de90b5b51326e6bbf794e1eac522aee4f85e87d0691981c61a06fd7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.184711/kopia-20240404.0.184711-linux-arm.tar.gz"
    sha256 "2a0d7979463b114baf9ef31eeee0b7a6e271218b0ea2e29007189c39773ac230"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240404.0.184711/kopia-20240404.0.184711-linux-arm64.tar.gz"
    sha256 "5cd0ca67efb654648e8915b47f5e0ba56d64bb236bb0ed67b54120c722ccf6d9"
  end

  def install
    bin.install "kopia"
  end
end
