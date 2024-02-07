# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240206.0.213751"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.213751/kopia-20240206.0.213751-macOS-x64.tar.gz"
    sha256 "874d91de7ea86734c06d160541097338dc584ab1166ad18f1c79ae7a74706b84"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.213751/kopia-20240206.0.213751-macOS-arm64.tar.gz"
    sha256 "3bba808f1d0ecfd9aee2ed491b729463691f6c084d2f59910492087cf08afec6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.213751/kopia-20240206.0.213751-linux-x64.tar.gz"
    sha256 "a94a3b28bb341857a1af6fda3996577ead96a4b79e8cbeb60245a69afe2a19c7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.213751/kopia-20240206.0.213751-linux-arm.tar.gz"
    sha256 "33989b89d429594968fdde3939403718211380e2bc383d531c76cace104f509f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240206.0.213751/kopia-20240206.0.213751-linux-arm64.tar.gz"
    sha256 "af87668af3be52b8094b11c6286b2624f04ed16ea6db2f428caf5f74b3e73def"
  end

  def install
    bin.install "kopia"
  end
end
