# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250423.0.35511"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.35511/kopia-20250423.0.35511-macOS-x64.tar.gz"
    sha256 "a4652accbd89091c343ebd5212702262dfae8f6b0a4c35b86c6d51c9dea24978"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.35511/kopia-20250423.0.35511-macOS-arm64.tar.gz"
    sha256 "44d4e6c228d23e9a17ab57ca1c3102a24df127606233610e736b9d28d47a4547"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.35511/kopia-20250423.0.35511-linux-x64.tar.gz"
    sha256 "4a8a92069a133a95b88799032ec31eedeeec9f19e5267a231209d3e716df9951"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.35511/kopia-20250423.0.35511-linux-arm.tar.gz"
    sha256 "8434af2fab1d5650b05649ffbada89663db775fcc405ceb79e4d9925e2fad1ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250423.0.35511/kopia-20250423.0.35511-linux-arm64.tar.gz"
    sha256 "6f43decd76e3accc141425b1ca1a38b6e5cb8c395ba43bb368856c149cbaefe6"
  end

  def install
    bin.install "kopia"
  end
end
