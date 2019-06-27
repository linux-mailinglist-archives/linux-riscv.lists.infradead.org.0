Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A10957E46
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 10:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RD3TIv14nvsi/KXpYbB+3NufOt+YFY1MTsZV5ol9N7g=; b=Myh
	SK9QwpAjVJFR+Owk4nrXRmQnkvClPQaQchBSvVSzWOQ7u0HbYVDoN/53s2xtTkKfFty/HIHq30X2V
	9ptQfyWqJVO77bsu5VClyG49kz81LA8ZHk425AVUv0Fn2aH+ilsbY4z3JCF0d89uRzjaati/tihdr
	yF76nSUvC4LqPTkHRcnbsMItq38Xg6DoIN1erVq4G1AG4KpDTJf9Q/Qt7Vkb/+OS7Anc4Ji7Wz3fG
	0gHs8TmYUete79DHqMIbay4eoPLSr+Pya5LinZKt00Mx/l0XEzRI+yELfYFWPce2F5Lpjpi9QUib1
	hpiINeawrgwy7arcIOPXXKg4VG4Wj8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPrz-0003rT-Ko; Thu, 27 Jun 2019 08:35:03 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPru-0003r5-6b
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 08:34:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id y15so858166pfn.5
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 01:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pL8dIdDRRR0f0oihVWvRAV0Y3VQl+T0ytK1Ju8LVSAk=;
 b=SCdBkO+jaQI/+32tsem4MYwzEIOMI3hZVuw9WMUP+0FE7yL9ObALw9j28rf2xf1fB2
 0k4ChEaKwpDNuJFt8Tq5B0TyP+w/jxmZzR/6VaJL8AD7ERyFf2whc9aHd04XDY2rhz8l
 gxA+2qt5QwU9jN5yDFUmKfpxF2Umndj7fxKmMiwbrYbRDMgl69fS4aEd1t82BpCpI6Pb
 yVRc92Gs409pSpHO0uM0ChMDieNkSvMPtLCtHXp66jykOqer+Jzrh1XxA7rxTsIEnWHp
 sEQGlVa9v4BcMQmow+58cBwGzSBFsBKfi26+KpJWDyMZ0IKWKcz+JtgDj6di0RtXYPvc
 Q1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pL8dIdDRRR0f0oihVWvRAV0Y3VQl+T0ytK1Ju8LVSAk=;
 b=JQ4+47reSnm6CDecqxiGYOz9cgQO5sXGLKILq1cdgvKI/TJ3B/H6d4R346kXlG6rL2
 jXDbQOS1AZGOK0jWkKQm8ofvb1UkHH01MuZzwZtr3izUuuVLnW3W7+P3lZ3LDtTdkj8h
 XfNRvv5sGh/Uym7HhcQ6XfOsLMjIdsZ1tRW4rLJo85vWocm5olrSRsi5ytyPAjxfJVYg
 b3ugSESllVzPBG6/bbos+SyRFbTq3/hOLjs4Z6XKFJMW38es1hFA2Vjojvv5/nGlbjJi
 5TMJx9tbZPsOif2xZmFqqlD7K2Diqht188GpMp7VhHm/F/rgxUT6R6uvO1geKAtfxv3S
 e4Ww==
X-Gm-Message-State: APjAAAWtXYrS98e77nYOzn59Hcq10R9y/ihMRaomAj4yHuhtv92aMZ6H
 I6z87yawq1xFiGQmvc1ixnKkG5/hRX4=
X-Google-Smtp-Source: APXvYqxH22kQuUNW79tCt4NQgJA3jxTp6iros6Z7j9hPr0a1EPw4lm+Na1LtfqSElnEUcJXDR9/eAw==
X-Received: by 2002:a65:63c3:: with SMTP id n3mr2571078pgv.139.1561624496816; 
 Thu, 27 Jun 2019 01:34:56 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id n19sm4001003pfa.11.2019.06.27.01.34.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 27 Jun 2019 01:34:55 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 paul.walmsley@sifive.com
Subject: [PATCH] riscv: ccache: Remove unused variable
Date: Thu, 27 Jun 2019 14:04:46 +0530
Message-Id: <1561624486-22867-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013458_307834_39FBE1B8 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>,
 palmer@sifive.com, aou@eecs.berkeley.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Reading the count register clears the interrupt signal. Currently, the
count registers are read into 'regval' variable but the variable is
never used. Therefore remove it.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/mm/sifive_l2_cache.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
index 4eb6461..3052a42 100644
--- a/arch/riscv/mm/sifive_l2_cache.c
+++ b/arch/riscv/mm/sifive_l2_cache.c
@@ -109,13 +109,13 @@ int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
 
 static irqreturn_t l2_int_handler(int irq, void *device)
 {
-	unsigned int regval, add_h, add_l;
+	unsigned int add_h, add_l;
 
 	if (irq == g_irq[DIR_CORR]) {
 		add_h = readl(l2_base + SIFIVE_L2_DIRECCFIX_HIGH);
 		add_l = readl(l2_base + SIFIVE_L2_DIRECCFIX_LOW);
 		pr_err("L2CACHE: DirError @ 0x%08X.%08X\n", add_h, add_l);
-		regval = readl(l2_base + SIFIVE_L2_DIRECCFIX_COUNT);
+		readl(l2_base + SIFIVE_L2_DIRECCFIX_COUNT);
 		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
 					   "DirECCFix");
 	}
@@ -123,7 +123,7 @@ static irqreturn_t l2_int_handler(int irq, void *device)
 		add_h = readl(l2_base + SIFIVE_L2_DATECCFIX_HIGH);
 		add_l = readl(l2_base + SIFIVE_L2_DATECCFIX_LOW);
 		pr_err("L2CACHE: DataError @ 0x%08X.%08X\n", add_h, add_l);
-		regval = readl(l2_base + SIFIVE_L2_DATECCFIX_COUNT);
+		readl(l2_base + SIFIVE_L2_DATECCFIX_COUNT);
 		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
 					   "DatECCFix");
 	}
@@ -131,7 +131,7 @@ static irqreturn_t l2_int_handler(int irq, void *device)
 		add_h = readl(l2_base + SIFIVE_L2_DATECCFAIL_HIGH);
 		add_l = readl(l2_base + SIFIVE_L2_DATECCFAIL_LOW);
 		pr_err("L2CACHE: DataFail @ 0x%08X.%08X\n", add_h, add_l);
-		regval = readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
+		readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
 		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_UE,
 					   "DatECCFail");
 	}
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
