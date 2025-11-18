# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251117.0.235946"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.235946/kopia-20251117.0.235946-macOS-x64.tar.gz"
    sha256 "81f96fd92e51426d3cb0480c6067ae1f21714ca0637d9de3cccdd579bd6a5a20"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.235946/kopia-20251117.0.235946-macOS-arm64.tar.gz"
    sha256 "18a4c7bb0819baf2b717e9cf08660260bf22b7a9a1fd655131a10f23e267e8aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.235946/kopia-20251117.0.235946-linux-x64.tar.gz"
    sha256 "4a96bac56bc1d6e13a3cae0181fb9de5c89fb05ba32dd97dccfa18d513048aa2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.235946/kopia-20251117.0.235946-linux-arm.tar.gz"
    sha256 "81a48335e2b5f9be3c19eb9867cf8a74c46a08462def989b8b93dc74033c5478"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251117.0.235946/kopia-20251117.0.235946-linux-arm64.tar.gz"
    sha256 "b6a6cfa97d0c8efc5b950292f4ac3fe3fecf7436aff4ebc639258726dc0ba101"
  end

  def install
    bin.install "kopia"
  end
end
