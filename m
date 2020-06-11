Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72A81F6D84
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 20:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	From:Subject:Mime-Version:Message-Id:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=COXpdfYzdd6T2PLhteaDM1tUQElcqbQJ6tIcGD3EDRg=; b=RfA+NNexIEZiWB6IC5127XBBtD
	ESetbe1GwOZ8Nset8zOxihTtXm8k9487w+1vejqRsz3rbezEm/eT1THp/aHil0/u2INVsBqPiIeni
	JZ4imClN/zp1RuDlP+T2L/gjqDJmn/3ZxpP+JcDnSTkYfL5UJBcu10CYfW8bbWqs9Hg7/rxc8Y+HP
	2CpyRS1wtJVWrMYQK/lrVNspH6uyt9sbFjj6U0iNj5BgUx61VxqDbxZ13Vj+FjBmRGsgoL6kcjzdu
	Ga78hyoFf7+5EV7oow30U9Fd+EbUsdXUll3fzEH7YECTNyGa2eG4oME3oATbf9Hs9fJqX9BeMBHhn
	oSc+8Kyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjS25-0005Oo-UB; Thu, 11 Jun 2020 18:34:33 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjS23-0005OO-AO
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 18:34:32 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id k186so7458675ybc.19
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 11:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=COXpdfYzdd6T2PLhteaDM1tUQElcqbQJ6tIcGD3EDRg=;
 b=o9hdq+lDTGdQ7pL6eS2ne+STn2zEfYAr6Sd9feD0gHCYpOzUsbmVOKpoiBtQP4hRhP
 0vd+WlglqyfcLJ9dwxfzJSViO0X4kGcUGdetOJVW7F8FeiZ3juWzPuV4sYw8rkN4ZUFy
 ylPg5u3vQGVe4MIfSCCWw6tJHtuBZQwPWcIIZrmAC2kmzRmTpimzaiVMSBkDHqWhdaOb
 ltCNz/98+IdgtXrP5J6B/vhq33ooa+nN/IByEuPkV65mBCzcpLEHo9u945AUVWVPhjSJ
 vXHubQ1UlbdcVVpDy6aFT+gAJEiM3RnQ/3xkqa7FelQYD7aZpbTIWafK9jGSDpUUzR1q
 HAHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=COXpdfYzdd6T2PLhteaDM1tUQElcqbQJ6tIcGD3EDRg=;
 b=aYKixxIZUEnkvjZYTZVytZvrS9VgUuNe/FYI9xO30ZV1ubIWL7qXavKOxKt0QB3n63
 iI7oYVl2X0lH450I4cpk61tIYq3/mKYsHUcjD3m+qORo+/0bP56C4/SXQrwiyj8H/UXG
 UX+L7/q5vIwg0wFOF3CvwJctv2qS4Y/YPUjDQgD7mZECTBSLwjhcvMu1msL8DbSZKvG+
 nZ2Otv4Dd1PbBgHcCvBeTx9w9QEFrvdTOykpVOEDBjmGW1gqiZCHwZ3BjY+LADc0MuYV
 H23NzrFji+p0moqDN53Exye+MgLvXGYpnDSZccwEwEeQNeA/mh8NtBGBLeV9u9Twjrq8
 S59w==
X-Gm-Message-State: AOAM531l7TGWUgtm/qaMD4ZDmJPE8LBKuuDs0cb+46eVCXBhU2pku59O
 kNqn9qu/S2qh4fgrxvt6uBU1zU4VPg==
X-Google-Smtp-Source: ABdhPJycnzJzYBE1uCXDWobHSfMgy7yeM2Oc8KQ/6LbE+KEXMBUsHdFKo8h/UNp7B8daeNUFZH40Nkv7kQ==
X-Received: by 2002:a25:3103:: with SMTP id x3mr17950241ybx.36.1591900468187; 
 Thu, 11 Jun 2020 11:34:28 -0700 (PDT)
Date: Thu, 11 Jun 2020 18:32:35 +0000
Message-Id: <20200611183235.37508-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH] riscv/atomic: Fix sign extension for RV64I
From: Nathan Huckleberry <nhuck@google.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_113431_375734_E54BF703 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux@googlegroups.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The argument passed to cmpxchg is not guaranteed to be sign
extended, but lr.w sign extends on RV64I. This makes cmpxchg
fail on clang built kernels when __old is negative.

To fix this, we just cast __old to long which sign extends on
RV64I. With this fix, clang built RISC-V kernels now boot.

Link: https://github.com/ClangBuiltLinux/linux/issues/867
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/riscv/include/asm/cmpxchg.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index d969bab4a26b..262e5bbb2776 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -179,7 +179,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -224,7 +224,7 @@
 			RISCV_ACQUIRE_BARRIER				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -270,7 +270,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -316,7 +316,7 @@
 			"	fence rw, rw\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
-- 
2.27.0.278.ge193c7cf3a9-goog


