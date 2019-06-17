Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE48487F6
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 17:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DD8QdUGVgYnQ93XVA3QFnMbjZ6TicqQdw6e+3oU14xI=; b=B0JsKj9axXWSJa
	LyJAQ8SJ8Iz3xyTwHaF/iEGkNWkyIZe17/ovNsxzuWC1Ih4BQAVRrYhVv2fl3Rp6oxHUdvMHTbMcm
	vvUHujQPip1+JtJfMskfKSHH+ARyDI+7RmsWP0feFQacptJ+WOiKgjagrdj/KYMrNishuBhoeffXC
	hDK3VvINQzmIc66UclioMJ1NwX59b1SYp1xUjYlTirVR7byboF+IOKP6t5CLckXRPN+yykRTdECmp
	GAbveASTMC98yjZxE7zmpezRc88y9QhruKF52MBMbOmqDOlWgIpT02JL2/86/uL/DaFrugDiEk2Fr
	kBtqLsLgG0ohicxMJv+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctxs-0000Im-VA; Mon, 17 Jun 2019 15:54:36 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctxp-0000Hx-Go
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 15:54:34 +0000
Received: by mail-ed1-x544.google.com with SMTP id i11so16909321edq.0
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 08:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=jV2fDJB1zhXMMMVqBq/8vXLMU9+s4P/AYpC16uvGS84=;
 b=YuxppzVpxWjvgD7CQFa65TY2bCaxtM0JMcUuzRKkgHgT/8D4S59j6Oqhf/u44x7pg0
 SowGT29iwxZyW14Rfac78gCP7sS6gISMriYhIAYJGSZlvi77MF1IzoVGhv/x5lTa4nOz
 lcmrY6o0Lt7Li2Coi6VzXf4Rqwxg0adWSTzTFeOnmNy2wmqtDuOdoWKzxMH1hDnnJuCF
 /WPTj/wWWXQu3xJ5z5WJbQUm75mGr90OFkAPkWSRNi3q85elB1t0aJw7j3LGt8zkDjyo
 hogKo5k06xVWXdIb5KrxRbx+ZcQn5GAaQf193B8Ak3B9O1V+/iSCcV7TYZqPQKzkmdgU
 Dyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=jV2fDJB1zhXMMMVqBq/8vXLMU9+s4P/AYpC16uvGS84=;
 b=pbg0JY9U2AWa/LOQ/lqrlx0+ybcuUhkYPwFYDxf3j4QyfA4am/170bV9owLq3EQUA8
 E/4dQWdMWJbGtjpGXerhIyemrZ8IRidshVagQpDVynpa8F8U0VhjDtM8iU9XwU1u5KjM
 ap2saX5bGvpDmfi8Mvblpz01R3LnNpkGvBY42CC/hceg7dgmv6c0AS8nwm5eaBziF6XG
 5877Fr//lsEmZoSyRlbKmNgJpIN5+Mcs0g5N1lo92BUWjwK+ODt/4PJXFlKZtj7Uq639
 UDF5DTnn0GRBLC+RXShdOi+vUk3VzSJe1A564NfRIiaqlBEmI/HOMQiGMpSD2Jqo0Z/4
 oSjA==
X-Gm-Message-State: APjAAAWILuJYWGFXkTU2K8/j5uhaHoZ1Q/Cepox9y1BLZ1eJIBxwz4Jw
 O21kZ0gPHz5V2Ur0Z8GcUQn3nQ==
X-Google-Smtp-Source: APXvYqwkkzzQLh5Z3U9OcJIPb6Q6NL3JOaCnMfSdWkTBEdV3Tucxf1iPAKZ/7FaGkE+pBLCyQPcMBA==
X-Received: by 2002:a17:906:c459:: with SMTP id
 ck25mr52234185ejb.32.1560786872016; 
 Mon, 17 Jun 2019 08:54:32 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id i1sm2239790ejb.80.2019.06.17.08.54.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 08:54:31 -0700 (PDT)
Date: Mon, 17 Jun 2019 08:54:30 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] RISC-V patches for v5.2-rc6
Message-ID: <alpine.DEB.2.21.9999.1906170846340.30717@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_085433_617944_E3FD9038 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-v5.2/fixes-rc6

for you to fetch changes up to 259931fd3b96e4386b361b7f80c1d89b266234c8:

  riscv: remove unused barrier defines (2019-06-17 07:09:43 -0700)

----------------------------------------------------------------
RISC-V patches for v5.2-rc6

This tag contains fixes, defconfig, and DT data changes for the v5.2-rc
series.  The fixes are relatively straightforward:

- Addition of a TLB fence in the vmalloc_fault path, so the CPU doesn't
  enter an infinite page fault loop;
- Readdition of the pm_power_off export, so device drivers that
  reassign it can now be built as modules;
- A udelay() fix for RV32, fixing a miscomputation of the delay time;
- Removal of deprecated smp_mb__*() barriers.

The tag also adds initial DT data infrastructure for arch/riscv, along
with initial data for the SiFive FU540-C000 SoC and the corresponding
HiFive Unleashed board.

We also update the RV64 defconfig to include some core drivers for the
FU540 in the build.

----------------------------------------------------------------
Andreas Schwab (1):
      riscv: export pm_power_off again

Kevin Hilman (1):
      RISC-V: defconfig: enable clocks, serial console

Nick Hu (1):
      riscv: Fix udelay in RV32.

Paul Walmsley (5):
      arch: riscv: add support for building DTB files from DT source data
      dt-bindings: riscv: sifive: add YAML documentation for the SiFive FU540
      dt-bindings: riscv: convert cpu binding to json-schema
      riscv: dts: add initial support for the SiFive FU540-C000 SoC
      riscv: dts: add initial board data for the SiFive HiFive Unleashed

Rolf Eike Beer (1):
      riscv: remove unused barrier defines

ShihPo Hung (1):
      riscv: mm: synchronize MMU after pte change

 Documentation/devicetree/bindings/riscv/cpus.yaml  | 168 ++++++++++++++++
 .../devicetree/bindings/riscv/sifive.yaml          |  25 +++
 MAINTAINERS                                        |   9 +
 arch/riscv/boot/dts/Makefile                       |   2 +
 arch/riscv/boot/dts/sifive/Makefile                |   2 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi         | 215 +++++++++++++++++++++
 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  65 +++++++
 arch/riscv/configs/defconfig                       |   4 +
 arch/riscv/include/asm/bitops.h                    |   5 -
 arch/riscv/kernel/reset.c                          |   1 +
 arch/riscv/lib/delay.c                             |   2 +-
 arch/riscv/mm/fault.c                              |  13 ++
 12 files changed, 505 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/riscv/cpus.yaml
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
 create mode 100644 arch/riscv/boot/dts/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/fu540-c000.dtsi
 create mode 100644 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
