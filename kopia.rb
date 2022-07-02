# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220701.0.211255"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220701.0.211255/kopia-20220701.0.211255-macOS-x64.tar.gz"
    sha256 "ca6ea8691e8f458d3316ec85df3f615ea425aed0cae1448b2623600be610351f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220701.0.211255/kopia-20220701.0.211255-macOS-arm64.tar.gz"
    sha256 "f0ba8bc046563b36f78a3831943aaa4ae3cada250b561f2c132348cab914b73f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220701.0.211255/kopia-20220701.0.211255-linux-x64.tar.gz"
    sha256 "a2427c3db169f09984e4eb7c7419f3a3e493f9592714bbff379c94dfb0975b8f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220701.0.211255/kopia-20220701.0.211255-linux-arm.tar.gz"
    sha256 "695e40f59cfff0cfe0da83db531083253dd2e146532190f1c42c841d589c4cfc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220701.0.211255/kopia-20220701.0.211255-linux-arm64.tar.gz"
    sha256 "961cfb4b60968d602d1fad715677896c0b9f769451f00ffa406de07f332260df"
  end

  def install
    bin.install "kopia"
  end
end
