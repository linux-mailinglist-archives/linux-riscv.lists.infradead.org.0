Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C1434419
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Jun 2019 12:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=crB3Q0VZlz7GDfum0ap9FRuKAdmaSyk4JcsYUKRYkSQ=; b=tyy
	oq3H1xD5UilVGnpVoKJJ8hmLdnMBz8pal3EtJqCK5oteGRwonDOVIfZWVzNwr3KW8dGsN3YQMcmg5
	3Rc+uEHZ27cqKAbALd7bCsmzxhUhUlVTOwrTWWs8GE5AcmmKLdOgzENEGO2u2wq9dJC7uPYPl4i2T
	ga/L5HOuP4i7sbrWL1+vBXwBmO9Jl1YFOvlCQUm83+QdXjczURUMfY6RadAzUtsWZNuCpVyUZ4955
	V5VfrH77TiNhdiYWfOxBBJ5ksWUwKG861Gh4bcertKZ6klrC56gmbRM/FNw9O4K60s70/C9IRxFlj
	oQR9FiwSIRSvLRbAdDuIWCMVGPUKTMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Tl-0003fM-8o; Tue, 04 Jun 2019 10:15:41 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6TF-0001rG-RQ; Tue, 04 Jun 2019 10:15:39 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x54AEC76032511;
 Tue, 4 Jun 2019 19:14:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x54AEC76032511
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559643254;
 bh=2Cnt75TjD0TucqN65Zm4F4aK2FsJEMupPn4+qQfaomQ=;
 h=From:To:Cc:Subject:Date:From;
 b=T4jvQ0G6x7AI4kdGX5qwlpK7HOvTaBPAv/cRO5t4X32Dcs0uPZAvSErXh4DSjGB31
 HcpKj3d7GK+dEJgeRDnlb3IgG5M1SUitGYK8fWYBHTStYwEem3M/mbalLmPcf7FXff
 2NyynthHyJ0CxXthF++gCaIlODh+BwsYOnM6Vm7DKEJGoJYT3haZXkmHOejQU4htdI
 qbLlQa5xUwjLEMB8M7yoUoLHvQw77TZmiZ2m1IsbGjpX7v+Ox9dBMBaEmddSnnMqUe
 FudqJKtGFxDLUHkFG12GbiN4Ma4TLji3PyPSof/DKDCjFWY8qenZH14JVAqU6EKQqf
 rZdDvtK1Yi38A==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 00/15] kbuild: refactor headers_install and support
 compile-test of UAPI headers
Date: Tue,  4 Jun 2019 19:13:54 +0900
Message-Id: <20190604101409.2078-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031511_028821_12D4E698 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Palmer Dabbelt <palmer@sifive.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Alexei Starovoitov <ast@kernel.org>, David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Yonghong Song <yhs@fb.com>,
 linux-snps-arc@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Jani Nikula <jani.nikula@intel.com>,
 Greentime Hu <green.hu@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Michal Marek <michal.lkml@markovi.net>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Martin KaFai Lau <kafai@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Multiple people have suggested to compile-test UAPI headers.

Currently, Kbuild provides simple sanity checks by headers_check
but they are not enough to catch bugs.

The most recent patch I know is David Howells' work:
https://patchwork.kernel.org/patch/10590203/

I agree that we need better tests for UAPI headers,
but I want to integrate it in a clean way.

The idea that has been in my mind is to compile each header
to make sure the selfcontainedness.

Recently, Jani Nikula proposed a new syntax 'header-test-y'.
https://patchwork.kernel.org/patch/10947005/

So, I implemented UAPI compile-testing on top of that.

When adding a new feature, cleaning the code first is a
good practice.

[1] Remove headers_install_all

This target installs UAPI headers of all architectures
in a single tree.
It does not make sense to compile test of headers from
multiple arches at the same time. Hence, removed.

[2] Split header installation into 'make headers' and 'make headers_install'

To compile-test UAPI headers, we need a work-directory somewhere
to save objects and .*.cmd files.

usr/include/ will be the work-directory.

Since we cannot pollute the final destination of headers_install,

I split the header installation into two stages.

'make headers' will build up
the ready-to-install headers in usr/include,
which will be also used as a work-directory for the compile-test.

'make headers_install' will copy headers
from usr/include to $(INSTALL_HDR_PATH)/include.

[3] Support compile-test of UAPI headers

This is implemented in usr/include/Makefile


Jani Nikula (1):
  kbuild: add support for ensuring headers are self-contained

Masahiro Yamada (14):
  kbuild: remove headers_{install,check}_all
  kbuild: remove stale dependency between Documentation/ and
    headers_install
  kbuild: make gdb_script depend on prepare0 instead of prepare
  kbuild: fix Kconfig prompt of CONFIG_HEADERS_CHECK
  kbuild: add CONFIG_HEADERS_INSTALL and loosen the dependency of
    samples
  kbuild: remove build_unifdef target in scripts/Makefile
  kbuild: build all prerequisite of headers_install simultaneously
  kbuild: add 'headers' target to build up ready-to-install uapi headers
  kbuild: re-implement Makefile.headersinst without directory descending
  kbuild: move hdr-inst shorthand to top Makefile
  kbuild: simplify scripts/headers_install.sh
  kbuild: deb-pkg: do not run headers_check
  fixup: kbuild: add support for ensuring headers are self-contained
  kbuild: compile test UAPI headers to ensure they are self-contained

 Documentation/kbuild/headers_install.txt |   7 --
 Documentation/kbuild/makefiles.txt       |  13 ++-
 Makefile                                 |  56 +++++-----
 arch/arc/configs/tb10x_defconfig         |   1 +
 arch/nds32/configs/defconfig             |   1 +
 arch/parisc/configs/a500_defconfig       |   1 +
 arch/parisc/configs/b180_defconfig       |   1 +
 arch/parisc/configs/c3000_defconfig      |   1 +
 arch/parisc/configs/default_defconfig    |   1 +
 arch/powerpc/configs/ppc6xx_defconfig    |   1 +
 arch/s390/configs/debug_defconfig        |   1 +
 include/uapi/{linux => }/Kbuild          |   6 +-
 init/Kconfig                             |  20 ++++
 lib/Kconfig.debug                        |  25 +++--
 samples/Kconfig                          |  14 ++-
 samples/Makefile                         |   4 +-
 scripts/Kbuild.include                   |   6 --
 scripts/Makefile                         |   5 -
 scripts/Makefile.build                   |   9 ++
 scripts/Makefile.headersinst             | 132 ++++++++++-------------
 scripts/Makefile.lib                     |   3 +
 scripts/cc-system-headers.sh             |   8 ++
 scripts/headers.sh                       |  29 -----
 scripts/headers_install.sh               |  48 ++++-----
 scripts/package/builddeb                 |   2 +-
 usr/.gitignore                           |   1 -
 usr/Makefile                             |   2 +
 usr/include/.gitignore                   |   3 +
 usr/include/Makefile                     | 132 +++++++++++++++++++++++
 29 files changed, 329 insertions(+), 204 deletions(-)
 rename include/uapi/{linux => }/Kbuild (77%)
 create mode 100755 scripts/cc-system-headers.sh
 delete mode 100755 scripts/headers.sh
 create mode 100644 usr/include/.gitignore
 create mode 100644 usr/include/Makefile

-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
