Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2331BE326
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Apr 2020 17:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bZ2uka4PKxjNOr47/snGSXxilpTApOVFg/i0FxlPvdM=; b=h/TFGb6JiNsfSX7hB6KvYnlvG9
	kNMg0AiwEOJhIyvfhARPOg2gIN0/uVRs7sAN1Ht3/xgN391xzQxWxZmYnDXjc/ogFthC+f3ToH8qO
	g2YZU1NzOknFqc0dSy4uxiaBuxSqtMAYXo4EBHZ9Wp1CQhY18cDR/PpPPOePaQNs8etnnGvim5ckd
	AFN5/QPVFRv/fUJu1sNM7dpUSir/iUDwASCozWV7pw6dVZLY13+Fud6cvLkKug2oVbaKzV8Jvd++y
	CwThKasPmnqtx6gHmnv35aQ3b6eBRMtTQ2Hto18/jjUxWUIAg/c0P4Xf6EwrIpN3+ghoCeMt8TaCM
	k6lkHADA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTp1W-00015O-F8; Wed, 29 Apr 2020 15:53:22 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTp1S-00014J-VD
 for linux-riscv@lists.infradead.org; Wed, 29 Apr 2020 15:53:20 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 7so2432202pjo.0
 for <linux-riscv@lists.infradead.org>; Wed, 29 Apr 2020 08:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=bZ2uka4PKxjNOr47/snGSXxilpTApOVFg/i0FxlPvdM=;
 b=S6rWdOZYnP8kNPYHI1Fl1b/K810hbnXQ6gVm/FyWNk8SqPYUbaEU7qCKKEL/Wm3y59
 S2efPyMEdz+YVaK9i3VbjjQ9wWFsUyUfnxTsiE5ZcaeNeehVcXMLtq5uiRERk8lHSJIT
 DyGGFmLjwS9/jSwqDEfErRMRm3g3mSxEkmIuwxUSY+pz+DXuYMB4u0cD3gNOpcJ+A1gh
 ZirCaSMXbT0Q4qhjfoPOFtk4WQmeDTWGKOFmORXObnnEqtH5sFSwhGt7PZ87xTM3YgwW
 5JGDrbZWh5Vx+1EW6SqRnV5YCVWy6ksFLE/R6xcP8g5PnGVWZbm6Du0wO/55Rzie2KwG
 p0Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=bZ2uka4PKxjNOr47/snGSXxilpTApOVFg/i0FxlPvdM=;
 b=Rd2PklE5P5ZAm83Ps7/ZWz86v+tWyJAGJ4Pa4GiB46irlcTGBkNaHU9L7cN3RKfhI4
 2LKUjURIzKyP0eDS3xybkjD69gnOq2EdmXjDaL1pGhfxf/Pfvk32IN1jjWWN20TY0/yA
 jglOs8XWyxkHjI0rhUCJzlSXOn3LtnOkMe/fEcSlpoBsP79Sqar+Yvbd5Rc8jksER86h
 14L7DbAktQ+mpxGBc4utZhBAWjO3aQTOwjZWA0pXULhbzuv+IGjzaiy2QYSaBbIrdbIQ
 UoUl3R+F7xK/svrRa9fFqzwId+EAhlc7BIT6C+et83fWkRrfV9jNfLykdmRjpYM2N9Gk
 pNMw==
X-Gm-Message-State: AGi0PuZx/LCP9BrT3KoW88n8xxSfo5gIA6DcvoQiJSpSB2cKVCorxffn
 HlQIKqoK8pen6LJpwUKSexHjq+7pr5XnUA==
X-Google-Smtp-Source: APiQypLcUxgmaOGnEDrDSlI9lIATbE5uv3KudtostRSms2/dzW+4agHTHuO43W+rAFqwTqyo65XcXg==
X-Received: by 2002:a17:902:9a41:: with SMTP id
 x1mr14809736plv.250.1588175597385; 
 Wed, 29 Apr 2020 08:53:17 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id u3sm1397943pfb.105.2020.04.29.08.53.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 08:53:16 -0700 (PDT)
Date: Wed, 29 Apr 2020 08:53:16 -0700 (PDT)
X-Google-Original-Date: Wed, 29 Apr 2020 08:46:39 PDT (-0700)
Subject: [GIT PULL] RISC-V Fixes for 5.7-rc4
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-bd053cce-6f5a-40f4-9e58-a5ee70cc73a1@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_085319_027863_7F91AD95 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7-rc4

for you to fetch changes up to a5fe13c7b49478c95e74f31f5b8b8347735684a7:

  riscv: select ARCH_HAS_STRICT_KERNEL_RWX only if MMU (2020-04-24 11:40:40 -0700)

----------------------------------------------------------------
RISC-V Fixes for 5.7-rc4

This tag contains a handful of fixes that I'd like to target for 5.7.
Specifically:

* The change of a linker argument to allow linking with lld.
* A build fix for configurations without a frame pointer.
* A handful of build fixes related the SBI 0.1 vs 0.2 split.
* The removal of STRICT_KERNEL_RWX for !MMU, which isn't useful

----------------------------------------------------------------
Damien Le Moal (1):
      riscv: select ARCH_HAS_STRICT_KERNEL_RWX only if MMU

Guenter Roeck (1):
      RISC-V: stacktrace: Declare sp_in_global outside ifdef

Ilie Halip (1):
      riscv: fix vdso build with lld

Kefeng Wang (3):
      riscv: sbi: Correct sbi_shutdown() and sbi_clear_ipi() export
      tty: riscv: Using RISCV_SBI_V01 instead of RISCV_SBI
      riscv: sbi: Fix undefined reference to sbi_shutdown

 arch/riscv/Kconfig              |  2 +-
 arch/riscv/kernel/sbi.c         | 17 ++++++++++-------
 arch/riscv/kernel/stacktrace.c  |  4 ++--
 arch/riscv/kernel/vdso/Makefile |  6 +++---
 drivers/tty/hvc/Kconfig         |  2 +-
 drivers/tty/serial/Kconfig      |  2 +-
 6 files changed, 18 insertions(+), 15 deletions(-)

