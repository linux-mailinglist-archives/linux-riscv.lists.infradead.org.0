Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E168B17C846
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 23:24:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jDwLJul+FxK3t2qLTY7GdkPDL4w6d80LdqnOuzgJII8=; b=dEGSAhXCJjrASNT05vWM67OLen
	z3MZBX2XSFXx+cn4WpyBrSfMY5cPNtAurSbwcgp5fPnP40f6H5iF2m7RRr7Roce9811FwZOlM23kr
	eXO5QmHR8DHEUWUIMUsRO+qHnBW4tCWiEspmB55eZjGDu4MjX1Buy0/uHcITn1Ji0NVgHdybSNaEz
	tMeGgVUhVAaq44HHpB6ZJsXISNiuh6Vi70bqZ8Lww+l/8SHHIPbkp2EkFiZezZtApORJgG1zFtjxk
	vamh0qtk7LLzolRZw1micu2aLRPoacmIIAtKTKCw2S6xk2OfoEeO6GAePqiurJWXRdP26k8xdj3C3
	LAqCsWJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALOJ-0003K7-Pn; Fri, 06 Mar 2020 22:24:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jALOF-0003Jo-VR
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 22:24:21 +0000
Received: by mail-pl1-x641.google.com with SMTP id u3so1427754plr.9
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 14:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=jDwLJul+FxK3t2qLTY7GdkPDL4w6d80LdqnOuzgJII8=;
 b=GzwVJ3QwWk6jDijkAg9dfgQ5NVgUV5BfFWnUZq7G5tSxnrWZkonuq1/W8NjHjVdtow
 VmW0xQj/Q7/TcRKQPBUjO++peUT56wsmSbGNHccbVAdpSMYc+Zuhs5PDytQvIJZBpKed
 Ir0Vy/WulN7tXq4BhGTiONmAVRlsxiexXMBqE4hmVATLFm128n8wWsGHrGcsBQa6LYq4
 NOuZZdcwLKIU4PHCEEseJzhg78QGq7Hy5ES/S+aGejh5q24urRYTzZgt0oXyh/uLev6U
 DRuxDrC4gXYTlZkZ5iF6rRxBAstakKM+SHYB/BJWibs0hCdElnHCk+Ln4pNPUUEwUiRJ
 9+rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=jDwLJul+FxK3t2qLTY7GdkPDL4w6d80LdqnOuzgJII8=;
 b=XnBJJvuSm2UmC5JWFh6+KCNt/U7ZBGwb/8t5O30mjlBICv35iYg8FgbNOvsSM1M5BO
 7sdyPFg7zFGcv3Q5uUHmU8MDgoiVkmVTfgXKQ9bio2HWqWbX43eixlZWAokZE8NpbgrJ
 Yt+/L0XZuCb595vvlaJCN7z0a5vQZ7bs4Z/wlqsFXKz/F6S2O/dedtiHQxRcl1Dz99Jm
 AlMfVwg/P51ksnHaoPoiTsoB20Odli25Z81Fr5Lto2U483j+g6H9j0i/mtYy1sl9NVw2
 QPOMRjLXq/B37dWY43bM9MapWCAJM26Qhlek4XLauBB84rZ30HZwXxqu477sXhIhgwl0
 wXjA==
X-Gm-Message-State: ANhLgQ30LoySHVmHt9L5O43haMF5iXD9qNrbpUw74zUaXcTGU7WL2oYC
 q6gxW1d9gXiVWPFuty/SVnIDOemoZ/4=
X-Google-Smtp-Source: ADFU+vv4h8olV0/VzG3gFtML4+rByo3lb53ykwWa7qHI14CRNJVGFqdTVJSjzqUP6zbDieizYGd1Mw==
X-Received: by 2002:a17:90b:370b:: with SMTP id
 mg11mr5848539pjb.122.1583533458108; 
 Fri, 06 Mar 2020 14:24:18 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id x190sm37519605pfb.96.2020.03.06.14.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 14:24:17 -0800 (PST)
Date: Fri, 06 Mar 2020 14:24:17 -0800 (PST)
X-Google-Original-Date: Fri, 06 Mar 2020 14:23:50 PST (-0800)
Subject: [GIT PULL] RISC-V Fixes for 5.6-rc5
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-ceb3e2ad-8656-4228-b1c3-b90731c84c5f@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_142420_153153_05B4C6F5 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit 98d54f81e36ba3bf92172791eba5ca5bd813989b:

  Linux 5.6-rc4 (2020-03-01 16:38:46 -0600)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.6-rc5

for you to fetch changes up to af33d2433b03d63ed31fcfda842f46676a5e1afc:

  riscv: fix seccomp reject syscall code path (2020-03-05 13:58:15 -0800)

----------------------------------------------------------------
RISC-V Fixes for 5.6-rc5

This tag contains a handful of fixes that I would like to target for 5.6:

* A pair of fixes to module loading, which we hope solve the last of the issues
  with module text being loaded too sparsely for our call relocations.
* A Kconfig fix that disallows selecting memory models not supported by NOMMU.
* A series of Kconfig updates to ease selecting the drivers necessary to run on
  QEMU's virt platform.
* DTS updates for SiFive's HiFive Unleashed.
* A fix to our seccomp support that avoids mangling restartable syscalls.

----------------------------------------------------------------
Alexandre Ghiti (1):
      riscv: Fix range looking for kernel image memblock

Anup Patel (4):
      RISC-V: Add kconfig option for QEMU virt machine
      RISC-V: Enable QEMU virt machine support in defconfigs
      RISC-V: Select SYSCON Reboot and Poweroff for QEMU virt machine
      RISC-V: Select Goldfish RTC driver for QEMU virt machine

Damien Le Moal (1):
      riscv: Force flat memory model with no-mmu

Tycho Andersen (1):
      riscv: fix seccomp reject syscall code path

Vincent Chen (2):
      riscv: avoid the PIC offset of static percpu data in module beyond 2G limits
      riscv: Change code model of module to medany to improve data accessing

Yash Shah (1):
      riscv: dts: Add GPIO reboot method to HiFive Unleashed DTS file

 arch/riscv/Kconfig                                 |  1 +
 arch/riscv/Kconfig.socs                            | 24 ++++++++++++++++++++++
 arch/riscv/Makefile                                |  6 ++++--
 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  5 +++++
 arch/riscv/configs/defconfig                       | 17 +++------------
 arch/riscv/configs/rv32_defconfig                  | 18 +++-------------
 arch/riscv/include/asm/syscall.h                   |  7 -------
 arch/riscv/kernel/entry.S                          | 11 +++-------
 arch/riscv/kernel/module.c                         | 16 +++++++++++++++
 arch/riscv/kernel/ptrace.c                         | 11 +++++-----
 arch/riscv/mm/init.c                               |  2 +-
 11 files changed, 65 insertions(+), 53 deletions(-)

