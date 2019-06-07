Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CED39885
	for <lists+linux-riscv@lfdr.de>; Sat,  8 Jun 2019 00:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rGgMXzcY5gQGXWCdY9WtSwKaFIOFaaY82yrKW6VwbOQ=; b=XbvO6d2+ltmLg4
	hdBsKqqxIxuGk7DUWNcTa5STg4KyRlRiIMomkVhpSoGgnLJBLnGObFCnzExAyEvJsdiBWZkYp5Ah2
	5YjG1PEGO49LVJ1+aOIHpqsLyh19sOdxd54jQix4yt3CQa4qS9zzm5JI8vlewYaA8XN5zDQlmET0Q
	N48K6/h0cI0we25jM+E+4GPoAFXQohVH08HX7Msq/XQHtgIoFxbSK90EK6QM8WdiXzRBFcGwj66c8
	BpcQXecKvAlCsDMBPP39ofIybgAadfRirZH7c+dvUaBajtj/X7zfMgJwEqG5ZI/0tdz0+RIxIZ84k
	FGoIMHZLh0TqdZ07bBfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNG0-0007Bo-3u; Fri, 07 Jun 2019 22:22:44 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNFw-0007BC-Lq
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 22:22:42 +0000
Received: by mail-pl1-f196.google.com with SMTP id g21so1342487plq.0
 for <linux-riscv@lists.infradead.org>; Fri, 07 Jun 2019 15:22:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=/dYQFi3bBss8afoakW/tqhqFRGchq2/jlK/9FbC0dDw=;
 b=B1yW5cxefWHAHdG9a3J8A5/7XSjrY8hg4g5JcIffy3Fi5Yr6PEKgzRe1W9stNQzxG8
 23v2dNK53A3FdqI3Vxxr6HFlaefCNBk36vGTJFfIb0I7NjiIpNv7T9lti0N6JcOT88lN
 jSMtJN91UtZDoytp2mt2mDEKV0VqhwBH1WsAcSCmMwtnhHiLmghW3vw/lEaIuXxXARb0
 Vf0DpfpgMZh/ScV6nNw4DFbZtKsYVuZsq0JA58R+6Rs5yGQHZKk4web6R6rgizcRxk1M
 vsuYAe/M0FraeqpS7D4J+LnnW5rjWvHOVaEvzsVLuD2z7mrAYfsxQL2dAqxBdYK9xWW7
 f/uw==
X-Gm-Message-State: APjAAAUhb6Nrg/dHlU3ZmuzCUHw2QKg7Q2bq9A6xlFN5AcPGEbIZCgXc
 K3zHbwr+8priHmmwBPfuKo4U2Q==
X-Google-Smtp-Source: APXvYqzaIEf54bQUJpk9zAErhDTINFE9FzSORfLuunKkVFb1lASR7PlmH0H2/zyDFAugX85Q3bsNOQ==
X-Received: by 2002:a17:902:8bc1:: with SMTP id
 r1mr57009546plo.163.1559946159940; 
 Fri, 07 Jun 2019 15:22:39 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id n13sm3205489pff.59.2019.06.07.15.22.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:22:39 -0700 (PDT)
Subject: [PATCH v2] RISC-V: Break load reservations during switch_to
Date: Fri,  7 Jun 2019 15:22:22 -0700
Message-Id: <20190607222222.15300-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
 marco@decred.org, me@carlosedp.com, joel@sing.id.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_152240_714933_77B155F0 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The comment describes why in detail.  This was found because QEMU never
gives up load reservations, the issue is unlikely to manifest on real
hardware.

Thanks to Carlos Eduardo for finding the bug!

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
Changes since v1 <20190605231735.26581-1-palmer@sifive.com>:

* REG_SC is now defined as a helper macro, for any code that wants to SC
  a register-sized value.
* The explicit #ifdef to check that TASK_THREAD_RA_RA is 0 has been
  removed.  Instead we rely on the assembler to catch non-zero SC
  offsets.  I've tested this does actually work.

 arch/riscv/include/asm/asm.h |  1 +
 arch/riscv/kernel/entry.S    | 11 +++++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
index 5ad4cb622bed..946b671f996c 100644
--- a/arch/riscv/include/asm/asm.h
+++ b/arch/riscv/include/asm/asm.h
@@ -30,6 +30,7 @@
 
 #define REG_L		__REG_SEL(ld, lw)
 #define REG_S		__REG_SEL(sd, sw)
+#define REG_SC		__REG_SEL(sc.w, sc.d)
 #define SZREG		__REG_SEL(8, 4)
 #define LGREG		__REG_SEL(3, 2)
 
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 1c1ecc238cfa..af685782af17 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -330,6 +330,17 @@ ENTRY(__switch_to)
 	add   a3, a0, a4
 	add   a4, a1, a4
 	REG_S ra,  TASK_THREAD_RA_RA(a3)
+	/*
+	 * The Linux ABI allows programs to depend on load reservations being
+	 * broken on context switches, but the ISA doesn't require that the
+	 * hardware ever breaks a load reservation.  The only way to break a
+	 * load reservation is with a store conditional, so we emit one here.
+	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
+	 * know this will always fail, but just to be on the safe side this
+	 * writes the same value that was unconditionally written by the
+	 * previous instruction.
+	 */
+	REG_SC x0, ra, TASK_THREAD_RA_RA(a3)
 	REG_S sp,  TASK_THREAD_SP_RA(a3)
 	REG_S s0,  TASK_THREAD_S0_RA(a3)
 	REG_S s1,  TASK_THREAD_S1_RA(a3)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
