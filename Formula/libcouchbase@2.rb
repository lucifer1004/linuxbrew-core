class LibcouchbaseAT2 < Formula
  desc "C library for Couchbase"
  homepage "https://docs.couchbase.com/c-sdk/2.10/start-using-sdk.html"
  url "https://packages.couchbase.com/clients/c/libcouchbase-2.10.7.tar.gz"
  sha256 "bbee97ef2394f275b8cd4b9b940010566a2d34d4754ba3532a7fca3d94029b75"
  license "Apache-2.0"
  bottle do
    sha256                               arm64_big_sur: "fc953052461b5fff2a327e017be7a69d03b5dc27ee7cc85aef35d688771059cc"
    sha256                               big_sur:       "301e8a60feeae14d7edce86f2a414d0097553e837b07b5a414f1b871b33519c4"
    sha256                               catalina:      "d3065af67b6c27379c674fadeca9a3a37eda0323d701769c34ab4aa5d5e1a345"
    sha256                               mojave:        "b0fc35ac0a09d79476957fef601928fce6e9bc1abee8ec3522d59a389754fa39"
    sha256                               high_sierra:   "4efb6194205ecbd2149ccda7631ca9f5257bcf8bc8ea00e89d50fbb7f7113da2"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5b83a714cfbe44a61637d7c929c4ffd78069f714ea2bb5dc8d839adef0005555"
  end

  keg_only :versioned_formula

  depends_on "cmake" => :build
  depends_on "libev"
  depends_on "libevent"
  depends_on "libuv"
  depends_on "openssl@1.1"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args,
                            "-DLCB_NO_TESTS=1",
                            "-DLCB_BUILD_LIBEVENT=ON",
                            "-DLCB_BUILD_LIBEV=ON",
                            "-DLCB_BUILD_LIBUV=ON"
      system "make", "install"
    end
  end

  test do
    assert_match "LCB_ECONNREFUSED",
      shell_output("#{bin}/cbc cat document_id -U couchbase://localhost:1 2>&1", 1).strip
  end
end
