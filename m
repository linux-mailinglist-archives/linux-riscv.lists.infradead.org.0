Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3FE14EB57
	for <lists+linux-riscv@lfdr.de>; Fri, 31 Jan 2020 12:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XWIJzyqaNanE6sGvomf53Oez53czsVV0qXwjLD8Y5/g=; b=QpFWucXjIGCNcHYnnGBCNrzvj7
	J96xHeDI7Z5IknjBIJLz91HRlRdvMaLmVrX0tUTlBIwLJyTzqnfYT4SR2O7hzEnZYGimg6Wa86Yv6
	2o9M3xrH3V+nwGZRZFC0V19ncJ4uVzyHxl1PKNaAMukEIWK4irfRqk6ACBvDnPczFLcztn360lEI4
	jvT4hW2LeArMwbQ9wnqzvo/B4Cm4WAPhYFGPrmVBhww8/f2pypd6U0LnTzevtmDnYgpJOCv2xY+Xn
	tJxQML8Lu1JNpWI59y/vXn1yHh6RLGcgkFvFftzsy/L1ZFGHbmBDr9v8G5bPxWdulxKMpkHX5rnE3
	PSvE2t8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixU2Q-0001TT-K7; Fri, 31 Jan 2020 11:00:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixU2N-0001Sw-Hi
 for linux-riscv@lists.infradead.org; Fri, 31 Jan 2020 11:00:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so8060112wrd.9
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 03:00:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:cc:from:to:message-id;
 bh=XWIJzyqaNanE6sGvomf53Oez53czsVV0qXwjLD8Y5/g=;
 b=TbMrqJMQurYl1r3yVVFYJDjfu79Z2ryj+KUqrb3m6xcDEevs/arYA1dcQT7eQDLBYR
 68XPSJjIfEQUtXxVgC2xrGHKVVj6BZ2x8MM+Kk3Qw9J+5snj8wIaKAvh/uOPRvLpo/2a
 PQ/ns/1KLqEsZkzS5hTAN53il+OHsw+cc2GQV0C3w9Y0j4ujE7P9JxpbEmBDKaPROfm0
 OBABh8KnTwXv/1BV9dGiBo+eYWucchPhmaqx8yqhD94v5FyePZ9x6z7ZLe+l9xVsi29u
 KEvWVsFgP8q9Xr2tet5zZZftpTDrPqYnYlyiDTpoGPObIbGjpTUBWG4uSSeI+AAxgow1
 ynrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=XWIJzyqaNanE6sGvomf53Oez53czsVV0qXwjLD8Y5/g=;
 b=Z1UYYe2Fk1FAJlmxpik7FfdGUB452rRDmFe1Z966jTuCKItjISDofs4XX8ekwIa9qZ
 Na7fZjINb9JNcbur8dqjMGYpeVQYGNB37NDgiL9K65pFlB4qF8GkOdP+eVn600XIBM8s
 bAaTWhtQhDGkumb6B94fnDY1UjyKWfb4605vcWBh/xiNRgq/ly01V4p8tuKP2HsBhSAm
 UJWXzWkmFoPuv1x5WZrbWsqF+ZOKVYRWxFOCRBoq2afAXO72EV3+0NdMkSyc3DobhsQQ
 Rp1tte6hfuf05x5zSUNbiGkyoerZb9NmIAvRX6NidfqLE94/HL/AmcT5dkGfwNwsvrGW
 yjMA==
X-Gm-Message-State: APjAAAVataFXeqFnr22g/myFFdWjs7Yby6u01eM2FDaiQ0kOYo+v5Pl0
 0pTxXLSwP0Ro9HKhDAOBWFNtCw==
X-Google-Smtp-Source: APXvYqwPQyoMm3zb0nCIZv1kHf9M1e0vbMMGVHsQadhX9HAL4gHjXEr3waNmAVc2M6BpviPfAJakww==
X-Received: by 2002:adf:e984:: with SMTP id h4mr11717375wrm.275.1580468433264; 
 Fri, 31 Jan 2020 03:00:33 -0800 (PST)
Received: from localhost ([185.201.63.254])
 by smtp.gmail.com with ESMTPSA id s22sm9956121wmh.4.2020.01.31.03.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 03:00:32 -0800 (PST)
Date: Fri, 31 Jan 2020 03:00:32 -0800 (PST)
X-Google-Original-Date: Fri, 31 Jan 2020 10:59:20 GMT (+0000)
Subject: [GIT PULL] RISC-V Patches for the 5.6 Merge Window, Part 1
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-84383e2c-cd04-4915-a165-f10367359beb@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_030035_642834_B68668F6 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit def9d2780727cec3313ed3522d0123158d87224d:

  Linux 5.5-rc7 (2020-01-19 16:02:49 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.6-mw0

for you to fetch changes up to 61ffb9d27860769c5d5596f6e4cca3cded2755e0:

  riscv: dts: Add DT support for SiFive FU540 GPIO driver (2020-01-29 14:58:08 +0000)

----------------------------------------------------------------
RISC-V Patches for the 5.6 Merge Window, Part 1

This tag contains a handful of patches that I'd like to target for this merge
window:

* Support for kasan.
* 32-bit physical addresses on rv32i-based systems.
* Support for CONFIG_DEBUG_VIRTUAL
* DT entry for the FU540 GPIO controller, which has recently had a device
  driver merged.

These boot a buildroot-based system on QEMU's virt board for me.

----------------------------------------------------------------
Nick Hu (3):
      kasan: No KASAN's memmove check if archs don't have it.
      riscv: Add KASAN support
      kasan: Add riscv to KASAN documentation.

Olof Johansson (1):
      riscv: keep 32-bit kernel to 32-bit phys_addr_t

Yash Shah (1):
      riscv: dts: Add DT support for SiFive FU540 GPIO driver

Zong Li (1):
      riscv: mm: add support for CONFIG_DEBUG_VIRTUAL

 Documentation/dev-tools/kasan.rst                  |   4 +-
 arch/riscv/Kconfig                                 |   4 +-
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi         |  15 ++-
 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts |   4 +
 arch/riscv/include/asm/kasan.h                     |  27 ++++++
 arch/riscv/include/asm/page.h                      |  16 +++-
 arch/riscv/include/asm/pgtable-64.h                |   5 +
 arch/riscv/include/asm/string.h                    |   9 ++
 arch/riscv/kernel/head.S                           |   3 +
 arch/riscv/kernel/riscv_ksyms.c                    |   2 +
 arch/riscv/kernel/setup.c                          |   5 +
 arch/riscv/kernel/vmlinux.lds.S                    |   1 +
 arch/riscv/lib/memcpy.S                            |   5 +-
 arch/riscv/lib/memset.S                            |   5 +-
 arch/riscv/mm/Makefile                             |   8 ++
 arch/riscv/mm/kasan_init.c                         | 104 +++++++++++++++++++++
 arch/riscv/mm/physaddr.c                           |  37 ++++++++
 mm/kasan/common.c                                  |   2 +
 18 files changed, 245 insertions(+), 11 deletions(-)
 create mode 100644 arch/riscv/include/asm/kasan.h
 create mode 100644 arch/riscv/mm/kasan_init.c
 create mode 100644 arch/riscv/mm/physaddr.c

