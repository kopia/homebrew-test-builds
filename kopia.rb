# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250911.0.233528"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.233528/kopia-20250911.0.233528-macOS-x64.tar.gz"
    sha256 "e8fb24f4b53fc2cb8823a3ec85066e991ce29bfb38230e2c4186b1806002302a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.233528/kopia-20250911.0.233528-macOS-arm64.tar.gz"
    sha256 "efb2058f8a2e423b5c35eddf5faf60e30eb8c45b26206f631e9cd007bb815d35"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.233528/kopia-20250911.0.233528-linux-x64.tar.gz"
    sha256 "942904ae8deb5d7626349fca6e4669ed0d624b7e20a1bac59a8d81f9407dcb64"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.233528/kopia-20250911.0.233528-linux-arm.tar.gz"
    sha256 "f0334a38f517e96f8f3baae381313117dc75a04e43c14d33596950afcf24fa0e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250911.0.233528/kopia-20250911.0.233528-linux-arm64.tar.gz"
    sha256 "9959db6d20537ae31857d40e1b19e6651ebc10d011fe2e96ba98e986bfb9699a"
  end

  def install
    bin.install "kopia"
  end
end
