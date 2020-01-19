Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1BC141BBB
	for <lists+linux-riscv@lfdr.de>; Sun, 19 Jan 2020 04:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iN+0dT0AtvYpl1GzQb+Z68gF7cClxoyVzgffCez1D2Q=; b=Zs8GxgTVSUd9L7FjpAtUUkip3
	wP7X9OcwI0plPgGEwd1Oo9P26ouHmQp6961580TYqbXK78FK8hHhchBi2gu8dhQiBVSh8bXOHr5i9
	P8CR1wHjWizSd2JbhlCBNOTq8b3s+v05kpOyWf6gBu8OHrB0N+yKHt62Y3swrahmcoVJJH+1h8L2T
	tqb7a/WUB2RoUyjMy72WR22FyaHCvk/6aloYDrxstnjQE7l73K+Ti8gpUCGIa36CrafK7cV3r5+/q
	eXGbG+j7068HZHEJVs9da6+qYyLkqQ5LkIMeL9uxGZnbHtwsKLJN6Dsf4XFrgb5EYP/CDvwdw4AqS
	jM2m7liQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it1Wn-0006kT-Sq; Sun, 19 Jan 2020 03:45:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it1Wh-0006jk-It
 for linux-riscv@lists.infradead.org; Sun, 19 Jan 2020 03:45:31 +0000
Received: by mail-io1-xd41.google.com with SMTP id t26so30215268ioi.13
 for <linux-riscv@lists.infradead.org>; Sat, 18 Jan 2020 19:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=iN+0dT0AtvYpl1GzQb+Z68gF7cClxoyVzgffCez1D2Q=;
 b=YZcpiFLRB7Y42w1n9UVzr+1Jn8efyHe8VI/Pfvh9uZbMkPiw/n5iTr6YaY9GdeJFtT
 lJJKCTw0gmzayyNRwEuZSHqH8hPN5OsIpL8r90vipqb7n6FPR8gNZYzkXfli+nJ0aLDy
 Q/Fmj4KhgxI7Au6SSwzf/waYI+JamnXVDVxObdDW14l2dZUnyT9ykDsvv4sfRG6XmJXp
 983wlMGkvUcBXNTl+nBQMxorOnSn99hToTRKxdTdyl3WUaItMAD380170I3WndZvszsS
 +gtXmFsqy11Cs2ihXRc+JRxhMRPktpPg41/gXUTeqNrmKNkcQ80LxfsRXURuuBg0zc5X
 WwoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=iN+0dT0AtvYpl1GzQb+Z68gF7cClxoyVzgffCez1D2Q=;
 b=OlE7wAVOjzfkrikLMJ9cQNooOXInjrFXhMB/WtevsFBbN+NXLjCCnkDUWWNnKlKqGT
 LBYyIIwQulIDDRwQgFX5kW/3rHaqtQl8+3ngmsTDlgya/0W72XNPJu98d3Bc0/amvRH8
 ksWhhuj2bUlxZCTOX7vfK1/9QMPB52u+0fTGJMVAYdfsLBbUvHMeH3K3b3xuS8OglMwc
 21Hwk29ckP7qCqNAH2mjmZiELdiculI+/Iy2BE3JZznZpbonKIzOrVQVhilM8PIyhCEc
 2RfyRbcvmWMqQdWNEgaQjCPq/40Rcw60TgrLhw0sLE3y29kelzODJE8HnLSWwz/kbEG0
 6J1g==
X-Gm-Message-State: APjAAAWl/iiH3fx3xdmP19p86hmPVC1sLtkgKfN6QWBJ+PvnvG7EQPsi
 wumC61ZpB5X5amu24TcG8ATve+PUYPE=
X-Google-Smtp-Source: APXvYqwkddTdFbxzbi0eKTIRo8TYya7y6TPAY/oNziITaaaN9DAFDnvKd9TXrwdgag9dV8ihyHaldA==
X-Received: by 2002:a5e:8f41:: with SMTP id x1mr38308114iop.113.1579405525812; 
 Sat, 18 Jan 2020 19:45:25 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id g62sm9797127ile.39.2020.01.18.19.45.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 19:45:25 -0800 (PST)
Date: Sat, 18 Jan 2020 19:45:22 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: Less inefficient gcc tishift helpers (and export
 their symbols)
In-Reply-To: <20191217040631.91886-1-olof@lixom.net>
Message-ID: <alpine.DEB.2.21.9999.2001181938470.55560@viisi.sifive.com>
References: <20191217003057.39300-1-olof@lixom.net>
 <20191217040631.91886-1-olof@lixom.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_194527_687108_A8C69406 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019, Olof Johansson wrote:

> The existing __lshrti3 was really inefficient, and the other two helpers
> are also needed to compile some modules.
> 
> Add the missing versions, and export all of the symbols like arm64
> already does.
> 
> This fixes a build break triggered by ubsan:
> 
> riscv64-unknown-linux-gnu-ld: lib/ubsan.o: in function `.L2':
> ubsan.c:(.text.unlikely+0x38): undefined reference to `__ashlti3'
> riscv64-unknown-linux-gnu-ld: ubsan.c:(.text.unlikely+0x42): undefined reference to `__ashrti3'
> 
> Signed-off-by: Olof Johansson <olof@lixom.net>

Thanks Olof.  I modified the patch description to note that the code is 
based on libgcc per our off-list discussion, and to use 
SYM_PROC_ENTRY/EXIT per commit ffedeeb780dc5 ("linkage: Introduce new 
macros for assembler symbols"), and have queued the following patch.


- Paul


From: Olof Johansson <olof@lixom.net>
Date: Mon, 16 Dec 2019 20:06:31 -0800
Subject: [PATCH] riscv: Less inefficient gcc tishift helpers (and export their
 symbols)

The existing __lshrti3 was really inefficient, and the other two helpers
are also needed to compile some modules.

Add the missing versions, and export all of the symbols like arm64
already does.

This code is based on the assembly generated by libgcc builds.

This fixes a build break triggered by ubsan:

riscv64-unknown-linux-gnu-ld: lib/ubsan.o: in function `.L2':
ubsan.c:(.text.unlikely+0x38): undefined reference to `__ashlti3'
riscv64-unknown-linux-gnu-ld: ubsan.c:(.text.unlikely+0x42): undefined reference to `__ashrti3'

Signed-off-by: Olof Johansson <olof@lixom.net>
[paul.walmsley@sifive.com: use SYM_FUNC_{START,END} instead of ENTRY/ENDPROC; note
 libgcc origin]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/asm-prototypes.h |  4 ++
 arch/riscv/lib/tishift.S                | 75 +++++++++++++++++++------
 2 files changed, 61 insertions(+), 18 deletions(-)

diff --git a/arch/riscv/include/asm/asm-prototypes.h b/arch/riscv/include/asm/asm-prototypes.h
index dd62b691c443..27e005fca584 100644
--- a/arch/riscv/include/asm/asm-prototypes.h
+++ b/arch/riscv/include/asm/asm-prototypes.h
@@ -5,4 +5,8 @@
 #include <linux/ftrace.h>
 #include <asm-generic/asm-prototypes.h>
 
+long long __lshrti3(long long a, int b);
+long long __ashrti3(long long a, int b);
+long long __ashlti3(long long a, int b);
+
 #endif /* _ASM_RISCV_PROTOTYPES_H */
diff --git a/arch/riscv/lib/tishift.S b/arch/riscv/lib/tishift.S
index 15f9d54c7db6..ef90075c4b0a 100644
--- a/arch/riscv/lib/tishift.S
+++ b/arch/riscv/lib/tishift.S
@@ -4,34 +4,73 @@
  */
 
 #include <linux/linkage.h>
+#include <asm-generic/export.h>
 
-ENTRY(__lshrti3)
+SYM_FUNC_START(__lshrti3)
 	beqz	a2, .L1
 	li	a5,64
 	sub	a5,a5,a2
-	addi	sp,sp,-16
 	sext.w	a4,a5
 	blez	a5, .L2
 	sext.w	a2,a2
-	sll	a4,a1,a4
 	srl	a0,a0,a2
-	srl	a1,a1,a2
+	sll	a4,a1,a4
+	srl	a2,a1,a2
 	or	a0,a0,a4
-	sd	a1,8(sp)
-	sd	a0,0(sp)
-	ld	a0,0(sp)
-	ld	a1,8(sp)
-	addi	sp,sp,16
-	ret
+	mv	a1,a2
 .L1:
 	ret
 .L2:
-	negw	a4,a4
-	srl	a1,a1,a4
-	sd	a1,0(sp)
-	sd	zero,8(sp)
-	ld	a0,0(sp)
-	ld	a1,8(sp)
-	addi	sp,sp,16
+	negw	a0,a4
+	li	a2,0
+	srl	a0,a1,a0
+	mv	a1,a2
+	ret
+SYM_FUNC_END(__lshrti3)
+EXPORT_SYMBOL(__lshrti3)
+
+SYM_FUNC_START(__ashrti3)
+	beqz	a2, .L3
+	li	a5,64
+	sub	a5,a5,a2
+	sext.w	a4,a5
+	blez	a5, .L4
+	sext.w	a2,a2
+	srl	a0,a0,a2
+	sll	a4,a1,a4
+	sra	a2,a1,a2
+	or	a0,a0,a4
+	mv	a1,a2
+.L3:
+	ret
+.L4:
+	negw	a0,a4
+	srai	a2,a1,0x3f
+	sra	a0,a1,a0
+	mv	a1,a2
+	ret
+SYM_FUNC_END(__ashrti3)
+EXPORT_SYMBOL(__ashrti3)
+
+SYM_FUNC_START(__ashlti3)
+	beqz	a2, .L5
+	li	a5,64
+	sub	a5,a5,a2
+	sext.w	a4,a5
+	blez	a5, .L6
+	sext.w	a2,a2
+	sll	a1,a1,a2
+	srl	a4,a0,a4
+	sll	a2,a0,a2
+	or	a1,a1,a4
+	mv	a0,a2
+.L5:
+	ret
+.L6:
+	negw	a1,a4
+	li	a2,0
+	sll	a1,a0,a1
+	mv	a0,a2
 	ret
-ENDPROC(__lshrti3)
+SYM_FUNC_END(__ashlti3)
+EXPORT_SYMBOL(__ashlti3)
-- 
2.25.0.rc2



