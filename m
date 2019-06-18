Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF194A5C7
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 17:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pogb6s+Be76ztWaIDgq5yMiZsZFptb3XcoBN6gphB+8=; b=hlXWeMhHMgU36j
	2T0rYBQg/u5z49+CJZEAFFdTm0bnjO1+voTD+qJDshlW/zvvdtb5F3Eu4u4rPjcaP89ftJuvpCe6D
	H+UTobLdSR3y5mfcqFypXrQr5CO3UpU4Rq1Wzt8Vg2EviDZwtLbYD9xyDiA/t8zpOxfEhJAyb3neA
	xQUBJJ8a7ANx4sGEkImq4q0FeMpsVa+ylnbEqOyjIhF/UdrekkEs52x/kd+Hsr1zE+3Yc1fGxcR+y
	XcL/33mpJ5Jks0eoQjYyZnLGsuE67/XJAxr8pjm9O0eVDuNgcHKDus2CNXgDx31Xsmjd1dSmQhpt5
	7ViODGxY6NAZwhkK3hHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGKK-0000ut-7N; Tue, 18 Jun 2019 15:47:16 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGKA-0000tr-U6; Tue, 18 Jun 2019 15:47:08 +0000
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x5IFkfDL028455;
 Wed, 19 Jun 2019 00:46:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x5IFkfDL028455
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1560872802;
 bh=386ZLEU3NwMBqho2YAfsvSOOObyOn03wy4ojBhvxK60=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zEO3TjqbGOEvExBhKiAr+1HikWsmWFNgpCAfYBvqzvBYn3batDYk+Q30THkzzJVAi
 AnDI2sDbURwJ6EawFc9+Ece35Tk04fStXcjIXDdGDhQWoL6w11dMbFama5grXT4j0R
 V+OC4mb0Ws5539Va/vyrBmdYoQu8kXTFVWaH/UAZoxanZi0BUOfjT+zsRWLHNPFTye
 piqVckY4JJ7yzRVgtKrHBVSo3c/c5FJA4qcI1V94YH5vl93xRVCn9rUzej4Ssem18q
 v1tBySID2r88u+8+15EvkwHyxfo2CTpsQFe4gMd0Ab9Pv18fovHBho4ypB94zLM8Vd
 /rVtx9E/pjG/g==
X-Nifty-SrcIP: [209.85.222.43]
Received: by mail-ua1-f43.google.com with SMTP id a97so6417355uaa.9;
 Tue, 18 Jun 2019 08:46:41 -0700 (PDT)
X-Gm-Message-State: APjAAAWnsm6mx3/Cu0xyE4aR1fdMNpliICp2f8rGTzlOGsRZQH9Wu3bv
 osXrIsoUFk9IcorzJkC3olZBKFmMD71oSoKqtqY=
X-Google-Smtp-Source: APXvYqxtLvDnMS0CFAbDTiZ+5ZRw6eQK7Tj+rcqL/cHf9e3ufopPnNNl1cknMI4hmuC4210dH4UbfTG8JkzKXgzkjhE=
X-Received: by 2002:a67:7fcc:: with SMTP id
 a195mr44483545vsd.181.1560872800733; 
 Tue, 18 Jun 2019 08:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190604101409.2078-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190604101409.2078-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 19 Jun 2019 00:46:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNASv7WP+X2_oEEmp5tGqOxiv2VCj84CLuHhSsesF6AiD8A@mail.gmail.com>
Message-ID: <CAK7LNASv7WP+X2_oEEmp5tGqOxiv2VCj84CLuHhSsesF6AiD8A@mail.gmail.com>
Subject: Re: [PATCH 00/15] kbuild: refactor headers_install and support
 compile-test of UAPI headers
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_084707_183079_5A2C30C7 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Song Liu <songliubraving@fb.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Palmer Dabbelt <palmer@sifive.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Alexei Starovoitov <ast@kernel.org>, David Howells <dhowells@redhat.com>,
 Paul Mackerras <paulus@samba.org>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Yonghong Song <yhs@fb.com>,
 arcml <linux-snps-arc@lists.infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Jani Nikula <jani.nikula@intel.com>,
 Greentime Hu <green.hu@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Michal Marek <michal.lkml@markovi.net>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Networking <netdev@vger.kernel.org>, bpf@vger.kernel.org,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 7:15 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
>
> Multiple people have suggested to compile-test UAPI headers.
>
> Currently, Kbuild provides simple sanity checks by headers_check
> but they are not enough to catch bugs.
>
> The most recent patch I know is David Howells' work:
> https://patchwork.kernel.org/patch/10590203/
>
> I agree that we need better tests for UAPI headers,
> but I want to integrate it in a clean way.
>
> The idea that has been in my mind is to compile each header
> to make sure the selfcontainedness.
>
> Recently, Jani Nikula proposed a new syntax 'header-test-y'.
> https://patchwork.kernel.org/patch/10947005/
>
> So, I implemented UAPI compile-testing on top of that.
>
> When adding a new feature, cleaning the code first is a
> good practice.
>
> [1] Remove headers_install_all
>
> This target installs UAPI headers of all architectures
> in a single tree.
> It does not make sense to compile test of headers from
> multiple arches at the same time. Hence, removed.
>
> [2] Split header installation into 'make headers' and 'make headers_install'
>
> To compile-test UAPI headers, we need a work-directory somewhere
> to save objects and .*.cmd files.
>
> usr/include/ will be the work-directory.
>
> Since we cannot pollute the final destination of headers_install,
>
> I split the header installation into two stages.
>
> 'make headers' will build up
> the ready-to-install headers in usr/include,
> which will be also used as a work-directory for the compile-test.
>
> 'make headers_install' will copy headers
> from usr/include to $(INSTALL_HDR_PATH)/include.
>
> [3] Support compile-test of UAPI headers
>
> This is implemented in usr/include/Makefile
>
>
> Jani Nikula (1):
>   kbuild: add support for ensuring headers are self-contained
>
> Masahiro Yamada (14):
>   kbuild: remove headers_{install,check}_all
>   kbuild: remove stale dependency between Documentation/ and
>     headers_install
>   kbuild: make gdb_script depend on prepare0 instead of prepare
>   kbuild: fix Kconfig prompt of CONFIG_HEADERS_CHECK
>   kbuild: add CONFIG_HEADERS_INSTALL and loosen the dependency of
>     samples
>   kbuild: remove build_unifdef target in scripts/Makefile
>   kbuild: build all prerequisite of headers_install simultaneously
>   kbuild: add 'headers' target to build up ready-to-install uapi headers
>   kbuild: re-implement Makefile.headersinst without directory descending
>   kbuild: move hdr-inst shorthand to top Makefile
>   kbuild: simplify scripts/headers_install.sh
>   kbuild: deb-pkg: do not run headers_check
>   fixup: kbuild: add support for ensuring headers are self-contained
>   kbuild: compile test UAPI headers to ensure they are self-contained

Series, applied to linux-kbuild.


>  Documentation/kbuild/headers_install.txt |   7 --
>  Documentation/kbuild/makefiles.txt       |  13 ++-
>  Makefile                                 |  56 +++++-----
>  arch/arc/configs/tb10x_defconfig         |   1 +
>  arch/nds32/configs/defconfig             |   1 +
>  arch/parisc/configs/a500_defconfig       |   1 +
>  arch/parisc/configs/b180_defconfig       |   1 +
>  arch/parisc/configs/c3000_defconfig      |   1 +
>  arch/parisc/configs/default_defconfig    |   1 +
>  arch/powerpc/configs/ppc6xx_defconfig    |   1 +
>  arch/s390/configs/debug_defconfig        |   1 +
>  include/uapi/{linux => }/Kbuild          |   6 +-
>  init/Kconfig                             |  20 ++++
>  lib/Kconfig.debug                        |  25 +++--
>  samples/Kconfig                          |  14 ++-
>  samples/Makefile                         |   4 +-
>  scripts/Kbuild.include                   |   6 --
>  scripts/Makefile                         |   5 -
>  scripts/Makefile.build                   |   9 ++
>  scripts/Makefile.headersinst             | 132 ++++++++++-------------
>  scripts/Makefile.lib                     |   3 +
>  scripts/cc-system-headers.sh             |   8 ++
>  scripts/headers.sh                       |  29 -----
>  scripts/headers_install.sh               |  48 ++++-----
>  scripts/package/builddeb                 |   2 +-
>  usr/.gitignore                           |   1 -
>  usr/Makefile                             |   2 +
>  usr/include/.gitignore                   |   3 +
>  usr/include/Makefile                     | 132 +++++++++++++++++++++++
>  29 files changed, 329 insertions(+), 204 deletions(-)
>  rename include/uapi/{linux => }/Kbuild (77%)
>  create mode 100755 scripts/cc-system-headers.sh
>  delete mode 100755 scripts/headers.sh
>  create mode 100644 usr/include/.gitignore
>  create mode 100644 usr/include/Makefile
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
