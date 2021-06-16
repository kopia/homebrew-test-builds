# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210616.0.135522"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210616.0.135522/kopia-20210616.0.135522-macOS-x64.tar.gz"
    sha256 "1608819ec13acd885ff20f46da110dd82ae1a4084324bb6d134c41806965a240"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210616.0.135522/kopia-20210616.0.135522-macOS-arm64.tar.gz"
    sha256 "c79231d09919a797d15905f94d85b1bba477e8905ffe69d17fa3492c2eedd661"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210616.0.135522/kopia-20210616.0.135522-linux-x64.tar.gz"
    sha256 "a37d9c28ce7a0dc93d5d4d1ced4ac1ffc6ddd3893239903d8f1e468c8507acc5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210616.0.135522/kopia-20210616.0.135522-linux-arm.tar.gz"
    sha256 "ab4008044c72499b7c35cad094d25ab2dc8e13323512ecff47f818d3032e8b14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210616.0.135522/kopia-20210616.0.135522-linux-arm64.tar.gz"
    sha256 "f7c38d0808ac74767fc437ae9cc9d98835e7354bb923f9a7647e8f168600afb8"
  end

  def install
    bin.install "kopia"
  end
end
