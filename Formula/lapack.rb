class Lapack < Formula
  desc "Linear Algebra PACKage"
  homepage "https://www.netlib.org/lapack/"
  url "https://github.com/Reference-LAPACK/lapack/archive/v3.9.0.tar.gz"
  sha256 "106087f1bb5f46afdfba7f569d0cbe23dacb9a07cd24733765a0e89dbe1ad573"
  license "BSD-3-Clause"
  revision OS.mac? ? 1 : 2
  head "https://github.com/Reference-LAPACK/lapack.git"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "7b84850a2c6dd2c589630c1c61157594c05689b516e1e072d1e0ad62e0df40e2"
    sha256 cellar: :any_skip_relocation, big_sur:       "4545eca9af03f52eb2080a3e45017d877b1832a9096c5c023886bd8aa1116bec"
    sha256 cellar: :any_skip_relocation, catalina:      "be00d33447ab0bb47a05f89517640c984cafb7723fd6fff9749de773c304f2df"
    sha256 cellar: :any_skip_relocation, mojave:        "ad84de82af78dc5ee4b305c76a79a3fc18420beeac2be72d1c262936d5a9110e"
    sha256 cellar: :any_skip_relocation, high_sierra:   "fd360d9073e8a483e88a0bca6c8dc96a8159488fa3a6009bb8cbe03747f20f4f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3552f6622f22a35a9ba8686668ff5bba2a85b1fe59555571fe2fd7b4e569cfb7"
  end

  keg_only :shadowed_by_macos, "macOS provides LAPACK in Accelerate.framework"

  keg_only "it conflicts with openblas" unless OS.mac?

  depends_on "cmake" => :build
  depends_on "gcc" # for gfortran

  def install
    ENV.delete("MACOSX_DEPLOYMENT_TARGET")

    mkdir "build" do
      system "cmake", "..",
                      "-DBUILD_SHARED_LIBS:BOOL=ON",
                      "-DLAPACKE:BOOL=ON",
                      *std_cmake_args
      system "make", "install"
    end
  end

  test do
    (testpath/"lp.c").write <<~EOS
      #include "lapacke.h"
      int main() {
        void *p = LAPACKE_malloc(sizeof(char)*100);
        if (p) {
          LAPACKE_free(p);
        }
        return 0;
      }
    EOS
    system ENV.cc, "lp.c", "-I#{include}", "-L#{lib}", "-llapacke", "-o", "lp"
    system "./lp"
  end
end
