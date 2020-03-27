Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0DA195D35
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 18:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mkw52LsZ6nlRtEJ4Q5T/LK/F7/IwJaCpYdC0S/qED7M=; b=uc1amWLpwyXdvm6NjvDAgVOnCR
	Pde7ayCM3ZYhUGkVIjDYcVqEb2XDZMCEQVCVmIySttuI8GPLYM1+w1k3lkiIt7DaRC17yUvM533eh
	zuhprrnlZlPlYtrIWQlt7snxqTyNknvdlw+wSmwzw9+GsNAMsIye0ZBAy5gxDHTHPnDqqry61Vx8I
	sQagjhEsHzWRY5bQQOJxSL87r2vYhDztyzn/NDoiUxSbTGw+vSp4Ii8QFPhEi+kmMWoBqwxHh/Pcp
	KJVk67gj6W55o8r/09E3tPeURgw9RKK673dJTKyQS7q+ncK7rTnZ9BGJnjDdeB8LJ0DD8tbtHjvP/
	SkDfgdjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtBp-0002vw-Dk; Fri, 27 Mar 2020 17:54:41 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtBl-0002vd-MA
 for linux-riscv@lists.infradead.org; Fri, 27 Mar 2020 17:54:39 +0000
Received: by mail-pj1-x1042.google.com with SMTP id nu11so4076136pjb.1
 for <linux-riscv@lists.infradead.org>; Fri, 27 Mar 2020 10:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=Mkw52LsZ6nlRtEJ4Q5T/LK/F7/IwJaCpYdC0S/qED7M=;
 b=zUCc/TDavisIS/nEckngunG08U6GNKcmnEOHhEc46YIwW8rfTM/wP8COdeqcysBcf7
 vlgYbaIBL0ovzuzIcKWkwZ6i4coYZ7WxZjkcieWp+c9nLKoG7GKYgh8YQVKQaXZtjMuH
 aV18KHnEaWnOaSj6I+oSzJw/0www9/NR6vArfG20yGMAnESDiY4H3lX7z+EhCL1s7LJi
 1UGcX+0a9gTSWhHiVZtxUFfwjGObCee1PAHGW0SRPMu5iLloNFNnK5cNNiHpKtj7WpWg
 uNGK0dUcKToZQcIcXSdfTEmW6RxhzYE7g+FrLO4n+KQadJO3Unofx8cn2l6g8ESQVv0h
 7esA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=Mkw52LsZ6nlRtEJ4Q5T/LK/F7/IwJaCpYdC0S/qED7M=;
 b=GP7ryaVX70kplUt9GNuSEf4tcARxIXahLaLHlJCL+y3VqFPWAC/lL8ZOVe4a9WWBxu
 HorAxz+4tbyXRIavAVubFlao0zJWMdwirV8IzHEEo7p2ZAKGH62gLQwqR83KXh/8e7lt
 nFmHmKtoWLc/Alsh5aohGctwTbpBsa3ZCO03eg2ueEfBRLKdv79wtEnyfZBypTUyeAgV
 BHSY7nHHK1uBU13Z07jPvWe3fPwgY7o05Ff6d9MLpTWOGgm2te/id40mmW63t4/CUPmk
 F1wDySSGkkUokeeTFilzOIv6glhg/LPC0wAIZdv7zp2BvA9IpKWkkZJDsshEvm7RjaEW
 ut3Q==
X-Gm-Message-State: ANhLgQ16/UlN/2m++UBSwIwc/wrSJi6scL1P2XZewX6mNcBnUsupY6Ex
 xspJoMHiDVBulqNW4hck+WsELLJo5/I=
X-Google-Smtp-Source: ADFU+vumAh9nXlqDjpD0UVqFzkCeeTU2h8ixiixYjLbr95USmGkKSYGWcFFFU1M8p8dzYao6FtasFQ==
X-Received: by 2002:a17:902:a5c6:: with SMTP id
 t6mr220421plq.323.1585331676441; 
 Fri, 27 Mar 2020 10:54:36 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id a3sm4572259pfg.172.2020.03.27.10.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 10:54:35 -0700 (PDT)
Date: Fri, 27 Mar 2020 10:54:35 -0700 (PDT)
X-Google-Original-Date: Fri, 27 Mar 2020 10:52:27 PDT (-0700)
Subject: [GIT PULL] Last Minute RISC-V Patches for 5.6
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-06e46f55-fd4f-48ab-b741-cf487976999b@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_105437_725636_5DB3544E 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The following changes since commit fb33c6510d5595144d585aa194d377cf74d31911:

  Linux 5.6-rc6 (2020-03-15 15:01:23 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.6

for you to fetch changes up to 2191b4f298fa360f2d1d967c2c7db565bea2c32e:

  RISC-V: Move all address space definition macros to one place (2020-03-26 19:26:11 -0700)

----------------------------------------------------------------
Last Minute RISC-V Patches for 5.6

Sorry for the last minute patches, but a few things fell through the cracks
recently.  I was on the fence about sending a late PR just for the M-mode
fixes, as we don't really have any users, but the last patch fixes the build
for Fedora which I consider pretty important.  Given that the M-mode fixes
should be very low risk, I figured it's worth sending them along as well.

This passes my standard "boot in QEMU" test.

----------------------------------------------------------------
Anup Patel (1):
      RISC-V: Only select essential drivers for SOC_VIRT config

Atish Patra (1):
      RISC-V: Move all address space definition macros to one place

Greentime Hu (2):
      riscv: uaccess should be used in nommu mode
      riscv: fix the IPI missing issue in nommu mode

 arch/riscv/Kconfig                |  1 -
 arch/riscv/Kconfig.socs           | 14 -------
 arch/riscv/configs/defconfig      | 16 +++++++-
 arch/riscv/configs/rv32_defconfig | 16 +++++++-
 arch/riscv/include/asm/clint.h    |  8 ++--
 arch/riscv/include/asm/pgtable.h  | 78 ++++++++++++++++++++-------------------
 arch/riscv/include/asm/uaccess.h  | 36 +++++++++---------
 arch/riscv/kernel/smp.c           |  2 +-
 arch/riscv/lib/Makefile           |  2 +-
 9 files changed, 95 insertions(+), 78 deletions(-)

