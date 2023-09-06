# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230906.0.13108"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.13108/kopia-20230906.0.13108-macOS-x64.tar.gz"
    sha256 "913d4403bc7b0d4737dd45a565cb5473c28adc85949cae8f64502826aadc2a29"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.13108/kopia-20230906.0.13108-macOS-arm64.tar.gz"
    sha256 "778c04cc8ab6dae4b283a4d8729153653f6eb25af7339bd5e6d226662060563d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.13108/kopia-20230906.0.13108-linux-x64.tar.gz"
    sha256 "ea295c356651057efaad9db60986d4591cef9dc8b259ae2d0796b396b7448c0d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.13108/kopia-20230906.0.13108-linux-arm.tar.gz"
    sha256 "f57a7598e353a0a5a50adb977b6ebc289357a73286af4989739739c477e50972"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230906.0.13108/kopia-20230906.0.13108-linux-arm64.tar.gz"
    sha256 "823d17775fc3bb21aff7fc6fb15f75cdaf3fc94f270b64d0958ecafb9f362e86"
  end

  def install
    bin.install "kopia"
  end
end
