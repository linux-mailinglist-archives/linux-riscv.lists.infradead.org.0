Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E10BD5B3
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Sep 2019 02:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mRxOUeqapovISbLSnO4MseDO9OyuihW3xDt4lfYFN1w=; b=bfJbTwhrsCz45x
	H+oAdj3QkhPSfzA/bqvnyza6835P/GefMR5TF8qvisOv0J9ZZz7Kk0BZtz8delWlJEb7T/E9R6oR5
	HxfJznxQ9aJkMqyxmEL8WGMnVy6eF7NTf3/zzL2bZn59PiSXqr/QUAM1ypuHddjdvQm/iiY+rhU3o
	HPUJH7p1mkILh7nZEMIAbva2XFvhlBfuNJw1nVuO3A71l/hFp9+Bw79+s+BHgUFVHUtHt/bjxyAoR
	cpIhfPmR7IC4MQeCPOx8PdVaCnbO3yU93ovd085uJTTfiicMZ+fTPlzKXMjzg5lVUTmIBunGPkFd8
	JaSI53+ME3rEbTYJ94JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCuzD-0005Dq-VS; Wed, 25 Sep 2019 00:16:52 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCuz5-0005DU-WA
 for linux-riscv@lists.infradead.org; Wed, 25 Sep 2019 00:16:46 +0000
Received: by mail-pf1-f196.google.com with SMTP id q21so2268351pfn.11
 for <linux-riscv@lists.infradead.org>; Tue, 24 Sep 2019 17:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=GUy92otsO7OGtR8tORwxTtrbT2fTJHl/EHieICSRiM4=;
 b=k77E+9ACjrbjZsbbIWOBjaQEpr5Y/aPIoAvZZGseJvzGxIyKYK7yGOqKACp0SohKuY
 XXRm8e7aRpIoMJX4Kxx3sHmntb06neElSYdfuGL+hz4c7wqTjQq0H4w9HfzGB5MN++cK
 DwwSDHor2bwc0mZSDhQPV6iSseK3lpg1OJgkzR77JDZOHCd3a6WeTqSH2+NxN6Af5ZDO
 tv2+rga+gJTeDZCGRdvZrcVhgtkeaK/1E6T3f2NmzppToUMQL4C+6zvC1CGXGkEdFtg4
 JzcKXGaZu7+3ciOxObo991wv5WkguU6nTVl5m/4Mlyv2rh0uhdzZ0oP9aqssKCdQmtJr
 O21Q==
X-Gm-Message-State: APjAAAXuIr05jY8zDw03nPI47YBLdJtbK8b2IaDJ0KOUBWNHCiqkEEXS
 Pe6v9DGv2UJFYba58mRTz4/cNw==
X-Google-Smtp-Source: APXvYqwXGPVj8lR5SB6ESQqPEewNM1bRVXwCbupxnsqlnpTm8UhKAltemb3fquXUV/G/YaODLvhEpQ==
X-Received: by 2002:aa7:86c1:: with SMTP id h1mr6564484pfo.128.1569370600147; 
 Tue, 24 Sep 2019 17:16:40 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id z3sm1104571pjd.25.2019.09.24.17.16.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 17:16:39 -0700 (PDT)
Subject: [PATCH] RISC-V: Clear load reservations while restoring hart contexts
Date: Tue, 24 Sep 2019 17:15:56 -0700
Message-Id: <20190925001556.12827-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_171644_059102_8D906B21 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, me@carlosedp.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, joel@sing.id.au, marco@decred.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This is almost entirely a comment.  The bug is unlikely to manifest on
existing hardware because there is a timeout on load reservations, but
manifests on QEMU because there is no timeout.

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
 arch/riscv/include/asm/asm.h |  1 +
 arch/riscv/kernel/entry.S    | 21 ++++++++++++++++++++-
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
index 5a02b7d50940..9c992a88d858 100644
--- a/arch/riscv/include/asm/asm.h
+++ b/arch/riscv/include/asm/asm.h
@@ -22,6 +22,7 @@
 
 #define REG_L		__REG_SEL(ld, lw)
 #define REG_S		__REG_SEL(sd, sw)
+#define REG_SC		__REG_SEL(sc.d, sc.w)
 #define SZREG		__REG_SEL(8, 4)
 #define LGREG		__REG_SEL(3, 2)
 
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 74ccfd464071..9fbb256da55d 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -98,7 +98,26 @@ _save_context:
  */
 	.macro RESTORE_ALL
 	REG_L a0, PT_SSTATUS(sp)
-	REG_L a2, PT_SEPC(sp)
+	/*
+	 * The current load reservation is effectively part of the processor's
+	 * state, in the sense that load reservations cannot be shared between
+	 * different hart contexts.  We can't actually save and restore a load
+	 * reservation, so instead here we clear any existing reservation --
+	 * it's always legal for implementations to clear load reservations at
+	 * any point (as long as the forward progress guarantee is kept, but
+	 * we'll ignore that here).
+	 *
+	 * Dangling load reservations can be the result of taking a trap in the
+	 * middle of an LR/SC sequence, but can also be the result of a taken
+	 * forward branch around an SC -- which is how we implement CAS.  As a
+	 * result we need to clear reservations between the last CAS and the
+	 * jump back to the new context.  While it is unlikely the store
+	 * completes, implementations are allowed to expand reservations to be
+	 * arbitrarily large.
+	 */
+	REG_L  a2, PT_SEPC(sp)
+	REG_SC x0, a2, PT_SEPC(sp)
+
 	csrw CSR_SSTATUS, a0
 	csrw CSR_SEPC, a2
 
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
