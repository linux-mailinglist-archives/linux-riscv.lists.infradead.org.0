Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5901EEAB4
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 20:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x8TeNbeX47VlJr4ytm2nmwX/C12Vbww0juHrTV1hnpI=; b=ImSgXWftlkxZzbMO8Kft9yYxyD
	k25+te8QfG/yo6qUKtyuA9yDU+BbwciZZJrlZ3hDFiDmQPF5ZQRwZtLupfRn690yf1hjZ6mpqaOX+
	t6aWj6KrXq5qfm44Kmub8Mhccy5jHlIXzTlkMnuRdgfZi+hypu/YPUwQBOxVmu3I9RITVCE5IJONR
	4dPuL6p/tkGG/K7FDnj9LLVOvUCFKs40j2OIKaVjC5Dze69MCfsrtaqzewGacztLOri4DIlAw04qM
	Xc4Wz+nzdLFxn+jGxAUP0Z+5P/pIlOkICe+hdABwjwPAhZKioOT/O86LkT+4FunZIZEdbJyHbYZM3
	8QczAqcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgv3U-0008SD-BP; Thu, 04 Jun 2020 18:57:32 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgv3Q-0008RM-Fo
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 18:57:30 +0000
Received: by mail-pf1-x444.google.com with SMTP id j1so3533817pfe.4
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 11:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=x8TeNbeX47VlJr4ytm2nmwX/C12Vbww0juHrTV1hnpI=;
 b=Yu41QiekavR3LuHQhEaGdp1xnnE0odpHxlhtP56p1OBe6UEzTar/zSEB9KurLNZwQP
 VAhXPVj4YEcEQXGImbC43W9yTco3LDws4SdBVfJhu1Y2Q/33awR+ZlSeyyCoWiDeRY2K
 BEk6/lJfLEdVHtdauOWKfZ0dsMtTqEnoBn4wJpsigkCm8DoqEfhtd9LZ0woWXxcyqvQ9
 kC7MsWit5tufw1UBXQt1lB1EOvdMxJlWJpuscUkX3tN8O5Qh/VM4clFRPwquoV385sdm
 jXDdhdBm3+tfWLey9TV/gfi2axtsRsE48A5oS50o0ch4X01H+PYiFxqyWVqQig47YISQ
 qSyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=x8TeNbeX47VlJr4ytm2nmwX/C12Vbww0juHrTV1hnpI=;
 b=GKeSPhxUxZ9ZXnH7/jl9zPBRzQyvbvxQxfyL7Srr/q0ilxIUa3SzQTjfINBKETXw6+
 U7F5jMUfr9YH7QWDlhjDYBWAQP/STB6sWkeC97kIyJjnS0YBj10kcEwJh9G0Yqi0vwyb
 Q6F4FnSN4z485LrMOiIYQjYJTBH9Xra2ArFWZQ7ukgnVrFCP1vmiO6xfDNEtYvvQAK+r
 FFjZZGBLUvMUwPgCcrZQgwexynnuuE79dzXNVpVS8vxNBAtpMdpsWH+UDUzUPhdhqYqM
 9ywvJlftgUJFvQKnOCe3tPQFq6kDsec2aX+9jjsKI5+TYiGowwIhcxN5ZWxuHBsnLMNZ
 G0cg==
X-Gm-Message-State: AOAM531HZwK+Ov92OSgFmHVTTAC4IBkLNaRhV4zqZpSwn05kZfcrLMdI
 9Uz3sXgstyLHjksmwrjn2pnT6tNe8YwNag==
X-Google-Smtp-Source: ABdhPJwm5cs4Y7Kn5MQv209qRC18xQ4hfmpd0wRzl8FCOohp4Eynz1xmoRWdTTnfrNm5E9lnq4zDTQ==
X-Received: by 2002:a63:9d0e:: with SMTP id i14mr5564137pgd.55.1591297045776; 
 Thu, 04 Jun 2020 11:57:25 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id g17sm1360814pju.11.2020.06.04.11.57.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 11:57:25 -0700 (PDT)
Date: Thu, 04 Jun 2020 11:57:25 -0700 (PDT)
X-Google-Original-Date: Thu, 04 Jun 2020 11:56:43 PDT (-0700)
Subject: [GIT PULL] RISC-V Patches for the 5.8 Merge Window, Part 1
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-8ec4417a-1930-4582-b309-e510ebbfb37c@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_115728_591765_9B9F2448 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce:

  Linux 5.7-rc6 (2020-05-17 16:48:37 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-mw0

for you to fetch changes up to 09c0533d129ce460e6214c14f744ddbac3733889:

  soc: sifive: l2 cache: Mark l2_get_priv_group as static (2020-05-28 15:57:49 -0700)

----------------------------------------------------------------
RISC-V Patches for the 5.8 Merge Window, Part 1

* The remainder of the code necessary to support the Kendryte K210.
    * Support for building device trees into the kernel, as the K210 doesn't
      have a bootloader that provides one.
    * A K210 device tree and the associated defconfig update.
    * Support for skipping PMP initialization on systems that trap on PMP
      accesses rather than treating them as WARL.
* Support for KGDB.
* Improvements to text patching.
* Some cleanups to the SiFive L2 cache driver.

I may have a second part, but I wanted to get this out earlier rather than
later as they've been ready to go for a while now.

----------------------------------------------------------------
Damien Le Moal (1):
      riscv: K210: Update defconfig

Palmer Dabbelt (5):
      riscv: Allow device trees to be built into the kernel
      riscv: K210: Add a built-in device tree
      RISC-V: Skip setting up PMPs on traps
      soc: sifive: l2 cache: Eliminate an unsigned zero compare warning
      soc: sifive: l2 cache: Mark l2_get_priv_group as static

Vincent Chen (4):
      kgdb: Add kgdb_has_hit_break function
      riscv: Add KGDB support
      riscv: Use the XML target descriptions to report 3 system registers
      riscv: Add SW single-step support for KDB

Yash Shah (2):
      riscv: cacheinfo: Implement cache_get_priv_group with a generic ops structure
      riscv: Add support to determine no. of L2 cache way enabled

Zong Li (3):
      riscv: Remove the 'riscv_' prefix of function name
      riscv: Use NOKPROBE_SYMBOL() instead of __krpobes annotation
      riscv: Use text_mutex instead of patch_lock

 arch/riscv/Kbuild                       |   1 +
 arch/riscv/Kconfig                      |   7 +
 arch/riscv/Kconfig.socs                 |  17 +-
 arch/riscv/boot/dts/Makefile            |   2 +
 arch/riscv/boot/dts/kendryte/Makefile   |   4 +-
 arch/riscv/configs/nommu_k210_defconfig |   7 +-
 arch/riscv/include/asm/cacheinfo.h      |  15 ++
 arch/riscv/include/asm/gdb_xml.h        | 117 ++++++++++
 arch/riscv/include/asm/kdebug.h         |  12 +
 arch/riscv/include/asm/kgdb.h           | 112 +++++++++
 arch/riscv/include/asm/parse_asm.h      | 219 ++++++++++++++++++
 arch/riscv/include/asm/patch.h          |   4 +-
 arch/riscv/include/asm/soc.h            |  39 ++++
 arch/riscv/kernel/Makefile              |   1 +
 arch/riscv/kernel/cacheinfo.c           |  17 ++
 arch/riscv/kernel/ftrace.c              |  15 +-
 arch/riscv/kernel/head.S                |  11 +-
 arch/riscv/kernel/kgdb.c                | 390 ++++++++++++++++++++++++++++++++
 arch/riscv/kernel/patch.c               |  46 ++--
 arch/riscv/kernel/setup.c               |   4 +
 arch/riscv/kernel/soc.c                 |  27 +++
 arch/riscv/kernel/traps.c               |   5 +
 arch/riscv/kernel/vmlinux.lds.S         |   5 +
 arch/riscv/mm/init.c                    |   9 +
 drivers/soc/kendryte/k210-sysctl.c      |  12 +
 drivers/soc/sifive/sifive_l2_cache.c    |  40 +++-
 kernel/debug/debug_core.c               |  12 +
 27 files changed, 1119 insertions(+), 31 deletions(-)
 create mode 100644 arch/riscv/include/asm/cacheinfo.h
 create mode 100644 arch/riscv/include/asm/gdb_xml.h
 create mode 100644 arch/riscv/include/asm/kdebug.h
 create mode 100644 arch/riscv/include/asm/kgdb.h
 create mode 100644 arch/riscv/include/asm/parse_asm.h
 create mode 100644 arch/riscv/kernel/kgdb.c

