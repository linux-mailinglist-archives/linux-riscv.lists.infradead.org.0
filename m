Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CA56D45C
	for <lists+linux-riscv@lfdr.de>; Thu, 18 Jul 2019 21:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eAZxRtctBKlCucCQ24ofeY/kd6Qvr4kyUMDS7u8iFig=; b=fXjqoFvP8cLstG
	WLFE/jMbDJvP/alPP1TCI8Irt1z+qDNf/giB6w+Mf+S2Gd7isS74ULWvWKEisnWhFhFrPk44KvTDk
	LkavWK7dnNms5h8FvRG5yLasI+2gQMiqDTxbShPkSxP/cQqt4F3I5iYNg9kvpdC+2V9vITHvAzqkO
	9QYM4Jssg0+kEDW+p0PVjMu+pVCxRN9hqTZQWeAATan0Nz/F/eweMdd67SqwHkh0cKKz8Kt9Vbtkg
	Ab9FjyuUt03/vrPY6py6tTcRRpVJbwaz6HI+G6Gl0T9e8xt+NcAgskFcHLGSuKtF4X7bXlFP57g0H
	8InKpQlsS80Py2R2K9vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBkp-000517-8O; Thu, 18 Jul 2019 19:07:47 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBkk-00050H-OW
 for linux-riscv@lists.infradead.org; Thu, 18 Jul 2019 19:07:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so53331104iom.3
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jul 2019 12:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=MQUZMSd8XzLJvG3kqon6Z7O6xL3wGkssHmZcIZJnmv8=;
 b=EvOoroJqXk90Np+OA+Gy1HD9IFvuOM3F6KVcElccvHImWBkweE9IcwQ+fFYQvkMZ9i
 3C7TGrXvQX1/K29F2ddJvyLrBt5A5E50Qws/BQpY2OM9GUIGtYL1cUjaU2m9thKICpqd
 oLtsW4dstSTM8SPWXF5VefG6b9SEFuHlYkPatg8C3WdEkDJfnahU/C+Wy72Yq829pFkp
 H0ptNkpWIk6wJ+KDo3bsAJQp+P5e3KkNYZvmBMoBzA6OHsNvjVqRhF8dWQ/jQaC6F00D
 uh80XKIXkR7Cg6/tsvJggCkuRqT9+S/QoHsoDzZsQiu28rk3MKraANiH4gcJsH9Jz1/1
 06pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=MQUZMSd8XzLJvG3kqon6Z7O6xL3wGkssHmZcIZJnmv8=;
 b=bjNhJy+/fWiEdwBLLMtfZBMoFl1iNMT7EkcS3MHfgAmCwWUj/v91nBYWyey6Y2V35K
 /pgcLks1BIGqoFuVZ6oXtFoYhjR3TkfSGr/NCqKy2MjhWKMl+xIxHEzzsy5bD4iiYO81
 /pOLEvOd5jPxnKXZjk7NNviDG6jPUb7dzmKJ3AcQcznvMpFbeIBz3kWL7ZnYJJ7ZGbR3
 fO8w58iIw6Q7jbDEAaKTxUCqPRQQc5TmFrGCcG/HytH9c0to/pR2SbOkVVvIz6xyDqsC
 0k7uFbcz/DYe/UNA7iLGf4mKxvhlDbOdulFrjR5GcHAKeZs6dwhrChCCFrm/9Tar022s
 TgPA==
X-Gm-Message-State: APjAAAUg/3S9cavhGXpFXiCMVBh5TO3ZPWMD/5yTNw4MhBy4A2XWpcVS
 o1Uc0eA5kbp2u6dfxsPHOD/dAw==
X-Google-Smtp-Source: APXvYqyhJxkNfXL7NWy4swrh8GSZ5IwccJV82aIpycrs3GVBegCdaYy0F+qdLW8XH19x/r9Ypt+kMA==
X-Received: by 2002:a5d:9bc6:: with SMTP id d6mr36025209ion.160.1563476858439; 
 Thu, 18 Jul 2019 12:07:38 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id s10sm78233725iod.46.2019.07.18.12.07.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 12:07:37 -0700 (PDT)
Date: Thu, 18 Jul 2019 12:07:36 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.3
Message-ID: <alpine.DEB.2.21.9999.1907181155050.17807@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_120743_390748_4BD69A53 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 6fbc7275c7a9ba97877050335f290341a1fd8dbf:

  Linux 5.2-rc7 (2019-06-30 11:25:36 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc1

for you to fetch changes up to 2d69fbf3d01a5b71e98137e2406d4087960c512e:

  riscv: fix build break after macro-to-function conversion in generic cacheflush.h (2019-07-18 08:16:56 -0700)

----------------------------------------------------------------
RISC-V updates for v5.3

- Hugepage support

- "Image" header support for RISC-V kernel binaries, compatible with
  the current ARM64 "Image" header

- Initial page table setup now split into two stages

- CONFIG_SOC support (starting with SiFive SoCs)

- Avoid reserving memory between RAM start and the kernel in setup_bootmem()

- Enable high-res timers and dynamic tick in the RV64 defconfig

- Remove long-deprecated gate area stubs

- MAINTAINERS updates to switch to the newly-created shared RISC-V git
  tree, and to fix a get_maintainers.pl issue for patches involving
  SiFive E-mail addresses

Also, one integration fix to resolve a build problem introduced during
in the v5.3-rc1 merge window:

- Fix build break after macro-to-function conversion in
  asm-generic/cacheflush.h

----------------------------------------------------------------
Alexandre Ghiti (2):
      x86, arm64: Move ARCH_WANT_HUGE_PMD_SHARE config in arch/Kconfig
      riscv: Introduce huge page support for 32/64bit kernel

Andy Lutomirski (1):
      riscv: Remove gate area stubs

Anup Patel (3):
      RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
      RISC-V: Fix memory reservation in setup_bootmem()
      RISC-V: Setup initial page tables in two stages

Atish Patra (1):
      RISC-V: Add an Image header that boot loader can parse.

Christoph Hellwig (1):
      riscv: remove free_initrd_mem

Loys Ollivier (3):
      arch: riscv: add config option for building SiFive's SoC resource
      riscv: select SiFive platform drivers with SOC_SIFIVE
      riscv: defconfig: enable SOC_SIFIVE

Paul Walmsley (3):
      MAINTAINERS: don't automatically patches involving SiFive to the linux-riscv list
      MAINTAINERS: change the arch/riscv git tree to the new shared tree
      riscv: fix build break after macro-to-function conversion in generic cacheflush.h

Yash Shah (1):
      riscv: ccache: Remove unused variable

 Documentation/riscv/boot-image-header.txt |  50 +++++
 MAINTAINERS                               |   4 +-
 arch/Kconfig                              |   3 +
 arch/arm64/Kconfig                        |   2 +-
 arch/riscv/Kconfig                        |  10 +
 arch/riscv/Kconfig.socs                   |  13 ++
 arch/riscv/boot/dts/sifive/Makefile       |   2 +-
 arch/riscv/configs/defconfig              |   8 +-
 arch/riscv/configs/rv32_defconfig         |   2 +
 arch/riscv/include/asm/cacheflush.h       |  63 +++++-
 arch/riscv/include/asm/fixmap.h           |   5 +
 arch/riscv/include/asm/hugetlb.h          |  18 ++
 arch/riscv/include/asm/image.h            |  65 ++++++
 arch/riscv/include/asm/page.h             |  14 +-
 arch/riscv/include/asm/pgtable-64.h       |   5 +
 arch/riscv/include/asm/pgtable.h          |  16 +-
 arch/riscv/kernel/head.S                  |  49 ++++-
 arch/riscv/kernel/setup.c                 |   6 +-
 arch/riscv/kernel/vdso.c                  |  19 --
 arch/riscv/mm/Makefile                    |   2 +
 arch/riscv/mm/hugetlbpage.c               |  44 ++++
 arch/riscv/mm/init.c                      | 326 ++++++++++++++++++++++++------
 arch/riscv/mm/sifive_l2_cache.c           |  11 +-
 arch/x86/Kconfig                          |   4 +-
 24 files changed, 620 insertions(+), 121 deletions(-)
 create mode 100644 Documentation/riscv/boot-image-header.txt
 create mode 100644 arch/riscv/Kconfig.socs
 create mode 100644 arch/riscv/include/asm/hugetlb.h
 create mode 100644 arch/riscv/include/asm/image.h
 create mode 100644 arch/riscv/mm/hugetlbpage.c

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
