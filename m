Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A380195D30
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 18:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mkw52LsZ6nlRtEJ4Q5T/LK/F7/IwJaCpYdC0S/qED7M=; b=VwRljlVrXS6dXZi69nbRqwgsjk
	cXNaNrIY5/sutH8qfif97egjfWC8duLt/4rDm+/KBivHzB2e7zMBn5zJ2lpne2qeoTozWE+E/xIQf
	zurRQIna6xUr8mIGGjTsXQKD28OddGf8emCt700Emyfm7PqaqYcSIBW+/178UOtD0h3xWzFNWZ+uN
	mNKL+L7phsjnlONQ7i3MENTduj+NEZpI63MCeDt1rFaEXuAPgsqGlKosX2Px0Urkha/f8dAsO7Q0N
	EAkevqcguzHa2VGAL/7tSyMYXYjOpS3m9B8UeLnFOxUS6WtI7Em9DO2x8A5Hep1k8oQ8L0Ej+Qaur
	xfFReycw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtAh-0002lo-1h; Fri, 27 Mar 2020 17:53:31 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtAY-0002dI-JL
 for linux-riscv@lists.infradead.org; Fri, 27 Mar 2020 17:53:26 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ng8so4177843pjb.2
 for <linux-riscv@lists.infradead.org>; Fri, 27 Mar 2020 10:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=Mkw52LsZ6nlRtEJ4Q5T/LK/F7/IwJaCpYdC0S/qED7M=;
 b=gQqx9TCDA3CS4l5CXZeRA7PlcZd2Fhx1miA/bBkPZi1g4bcF+GRzy7QwsdaAxAOJoy
 MQsz07VWidxMup4R1X2YJ7+kZM/OZZ7pSkuaY8+0gE1fPuPMjxMOV9Io64MYcIxvVwLH
 jpOgmIO9zZ8vBtNpwRQdPOL0/yomu7/lbA71RxL5GD6RmEQua2puGLTfTkfJ3+vV504p
 7+TgWTZcUVQmpWsExjo91TS3MG9aUg9OtVy45s2GVytXkHcKWEi1pQ4dleuFrOy9SmNj
 nC5AgC+YcFZ8XJb8qLC/jzMrStdD7lSrIT/gcghDgb1UQ9O/BCnNZwlP26emYc35Fggb
 w6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=Mkw52LsZ6nlRtEJ4Q5T/LK/F7/IwJaCpYdC0S/qED7M=;
 b=lbgil+mXnrlqdZEDuhvYhJ8IH0QQ1y665xSJqV/BpIVMAjmSYSiPLnHHf5C0zhWIH6
 aEba7zuYWYxrUho/8gsKQkkl7Ie3zewwIiq7BwIxePn3Kbptmrv/3CzHlJ+LWCpVDa2s
 GMfqSlRqo4cKjo1x5+WLayE3cTb+D3Xta6yXCW2Wpny9ejS5MHZjkIh8crM9+j4LSgxc
 CTgJhF/YcL2b7E57whEc7o4x8LxJwLq2DeQGT4AIhZ4sxenJGhQp2GYlxj7WEj56LImT
 C8gY+EgwkVumBRGXc8owfiGg4Qh/F0wXBPikSdbYFm+k7S6n7S6ppzMRUWmLi9x/2yWc
 N0tw==
X-Gm-Message-State: ANhLgQ1fWN6R0sjRWCOZxe9jX0x22hSyj/qncgnX1H0kD2mynqMsmXkK
 JjAzyf+TktqKPdazqUoABi/jI3PYwx0=
X-Google-Smtp-Source: ADFU+vvIc6Wjf8WOqjm9jzVUju2DkpVUYn57NK9O8ZTO+11p6gf0eYMgun2tKb/kqam7mst7Q8jYqg==
X-Received: by 2002:a17:902:9889:: with SMTP id
 s9mr222750plp.252.1585331598822; 
 Fri, 27 Mar 2020 10:53:18 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id m9sm4545957pff.93.2020.03.27.10.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 10:53:16 -0700 (PDT)
Date: Fri, 27 Mar 2020 10:53:16 -0700 (PDT)
X-Google-Original-Date: Fri, 27 Mar 2020 10:52:27 PDT (-0700)
Subject: [GIT PULL] Last Minute RISC-V Patches for 5.6
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-06e46f55-fd4f-48ab-b741-cf487976999b@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_105322_693240_8A3859A5 
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

