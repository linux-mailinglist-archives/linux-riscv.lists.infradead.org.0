Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330DF7CCE7
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 21:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Tv8mqhI9dMuTXWw6/vy8xazya+4bg/bcmvt4vVLDf0=; b=F0wBEVsZjrFlMS
	iGiNag8gjMR/sLCYuryu5k962WmOH71kqv5pPO/V0ESfziUtqDzoW8NBsqxjcizflSOcN+uvhQCDg
	LlOOB299HerzNlcl2uqE3HhkNL5NW4UE7LgPTHAr6+PyAgKu+Ap9JrS6wHog+SCPxwoUuOzpxAU0g
	DfcRoykfrw5+OGziZd/5HV8D6cmUMg8SGN/QFIBYbeK9+4uo3my5jSdFYQoUU/yvZ6MAYZ2WhDD7r
	nCkp+nZIaXa6wrP6NkTAmegunEL5P9O5obnePg/RFPBM0zDw+dXBycdF/wYtLtlBvtdPz7GwmHIUp
	n84ETnL0U9L9vuu/hk/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuPk-0000nS-2Q; Wed, 31 Jul 2019 19:37:32 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsuPh-0000mo-7C
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 19:37:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so19090369ioa.5
 for <linux-riscv@lists.infradead.org>; Wed, 31 Jul 2019 12:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=vZlexV9rypmA0TkuHP0oW+Ea8mrrAPr769hVW469b0k=;
 b=gwXvG33aEw1oXZFEAK07SvmqUcc+0/Db3uMmvHIqW0DfGZ/HMEargKfv8xNSfMpkWc
 iZpdZGTInx0YDunh3/0d3rxbB1ySNywvvKVchEShDHudGVRRB6DKANw/goNEq9gI1pK9
 f4d8RfQR9a/kTTkM0SjoDNgSvYE/0qaJWqV3qgZVQcOXU6GjYTrLBqcJV6lsgY51h+9o
 GMRY5uBXRpxDmN7TdtHb31CcOrUc0ju7ujZtuXuWKSUUS6rMkayTcqQENCh4Saf/bCum
 Vbk2Pt2xSFaK0hDlZysSsbdGTBEElYMjWysK9D2rrfFMdqxOa9YXY2V+apeOflb1jCSD
 lYXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=vZlexV9rypmA0TkuHP0oW+Ea8mrrAPr769hVW469b0k=;
 b=jSqAVchHLO5sTV13X0ttdBoQqqntP9HK3AemC49X0Olkb43OMMOwFj93/d641hdWYG
 UvKd6n9QlsNpKhprY7ZwsLWKcsbeZSA5d2O78YLXjq/MLSRBPIoyqRUbhtQ5IO5SY1Gp
 w1gahntZckqtuecUznv5/oCkskkl4xsgAcEztQ2jkFeFjAnoyZ4Dkh/MrHv6pLjfJqOT
 z2JmLPhGm+Mv06hT+Ka3IbkV7pR9p+FXqCBwBJ9+seW8xvXdP3B8umBgvfKSQ5OIrUbN
 NFwhA+VM/Xd2T+ywqjYHPuFEfS6TQb13eaG3YJP2cuLm4aRny7L5ug1ABjB3t3LAdHxr
 qLFg==
X-Gm-Message-State: APjAAAUwSruwsnVeiXo4vr42ojqgigHti/JldFh3IxL6sXaKTFSrRk/c
 hk9oL+DUhFpWugWFcEE6WaELKg==
X-Google-Smtp-Source: APXvYqxKDvIlwfFgKBVMUpGUKlkeLd1Ku6sAzYKyVOZa36E5yyykqifvS7kuCJDTczfKX4k3OxQBCQ==
X-Received: by 2002:a05:6602:220a:: with SMTP id
 n10mr6861055ion.205.1564601848102; 
 Wed, 31 Jul 2019 12:37:28 -0700 (PDT)
Received: from localhost ([170.10.65.222])
 by smtp.gmail.com with ESMTPSA id t4sm52254723iop.0.2019.07.31.12.37.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 12:37:27 -0700 (PDT)
Date: Wed, 31 Jul 2019 12:37:26 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] riscv: kbuild: add virtual memory system selection
In-Reply-To: <CAEUhbmUh0rJzFUoA05En9osy+Vv9AP0yOr-bs1goqk7+6SCv2g@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1907301218560.3486@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com>
 <CAEUhbmUh0rJzFUoA05En9osy+Vv9AP0yOr-bs1goqk7+6SCv2g@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_123729_294217_67B11541 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 28 Jul 2019, Bin Meng wrote:

> The spec does not mention 40-bit physical addresses, but 56-bit.

Thanks, agreed.  Updated patch below


- Paul

From: Paul Walmsley <paul.walmsley@sifive.com>
Date: Fri, 26 Jul 2019 10:21:11 -0700
Subject: [PATCH v2] riscv: kbuild: add virtual memory system selection

The RISC-V specifications currently define three virtual memory
translation systems: Sv32, Sv39, and Sv48.  Sv32 is currently specific
to 32-bit systems; Sv39 and Sv48 are currently specific to 64-bit
systems.  The current kernel only supports Sv32 and Sv39, but we'd
like to start preparing for Sv48.  As an initial step, allow the
virtual memory translation system to be selected via kbuild, and stop
the build if an option is selected that the kernel doen't currently
support.

This second version of the patch fixes some errors in the Kconfig
description text, found by Bin Meng <bmeng.cn@gmail.com>.

This patch currently has no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>
Cc: Bin Meng <bmeng.cn@gmail.com>
---
 arch/riscv/Kconfig                  | 43 +++++++++++++++++++++++++++++
 arch/riscv/include/asm/pgtable-32.h |  4 +++
 arch/riscv/include/asm/pgtable-64.h |  4 +++
 3 files changed, 51 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727ecd6c..f5e76e25a91e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -155,6 +155,49 @@ config MODULE_SECTIONS
 	bool
 	select HAVE_MOD_ARCH_SPECIFIC
 
+choice
+	prompt "Virtual Memory System"
+	default RISCV_VM_SV32 if 32BIT
+	default RISCV_VM_SV39 if 64BIT
+	help
+	  The RISC-V Instruction Set Manual Volume II: Privileged
+	  Architecture defines several different "virtual memory
+	  systems" which specify virtual and physical address formats
+	  and the structure of page table entries.  This determines
+	  the amount of virtual address space present and how it is
+	  translated into physical addresses.
+
+	config RISCV_VM_SV32
+	        depends on 32BIT
+		bool "RISC-V Sv32"
+		help
+		  The Sv32 virtual memory system is a page-based
+		  address and page table format for RV32 systems.
+		  It specifies a translation between 32-bit virtual
+		  addresses and 33-bit physical addresses, via a
+		  two-stage page table layout.
+	config RISCV_VM_SV39
+		depends on 64BIT
+		bool "RISC-V Sv39"
+		help
+		  The Sv39 virtual memory system is a page-based
+		  address and page table format for RV64 systems.
+		  It specifies a translation between 39-bit virtual
+		  addresses and 56-bit physical addresses, via a
+		  three-stage page table layout.
+	config RISCV_VM_SV48
+		depends on 64BIT
+		bool "RISC-V Sv48"
+		help
+		  The Sv48 virtual memory system is a page-based
+		  address and page table format for RV64 systems.
+		  It specifies a translation between 48-bit virtual
+		  addresses and 56-bit physical addresses, via a
+		  four-stage page table layout.
+
+endchoice
+
+
 choice
 	prompt "Maximum Physical Memory"
 	default MAXPHYSMEM_2GB if 32BIT
diff --git a/arch/riscv/include/asm/pgtable-32.h b/arch/riscv/include/asm/pgtable-32.h
index b0ab66e5fdb1..86d41a04735b 100644
--- a/arch/riscv/include/asm/pgtable-32.h
+++ b/arch/riscv/include/asm/pgtable-32.h
@@ -6,6 +6,10 @@
 #ifndef _ASM_RISCV_PGTABLE_32_H
 #define _ASM_RISCV_PGTABLE_32_H
 
+#if !defined(CONFIG_RISCV_VM_SV32)
+#error Only Sv32 supported
+#endif
+
 #include <asm-generic/pgtable-nopmd.h>
 #include <linux/const.h>
 
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 74630989006d..86935595115d 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -6,6 +6,10 @@
 #ifndef _ASM_RISCV_PGTABLE_64_H
 #define _ASM_RISCV_PGTABLE_64_H
 
+#if !defined(CONFIG_RISCV_VM_SV39)
+#error Only Sv39 supported for now
+#endif
+
 #include <linux/const.h>
 
 #define PGDIR_SHIFT     30
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
