Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8211B15F5
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Sep 2019 23:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Vau6hjqPAjaLaDcSE2azVENsgF1kZiEDLaO8nVjOyo=; b=Ock1AIT9ZM953V
	Dm/iqdnCsAZid+wdsERKmSZ3ltm0dXfkIPfY1VwrsAO0uZz3TuuNfWklU0fpApmcxsRlmwslmEfcH
	YA3GlEtHj0i/57AJRRDGHUeRhxx8XvOLMPQhHnAo/1PTa3+JFrewG0gWisIoPkGM1zFg/lah6d3T7
	WfKaHv1oqR7ZHGCZw0Meela/E9ueddiMn5RDd6wKb+xpVRsy5PtjuXXUwAymcHWrjEUwa6jIeKvqV
	l4uhJmEzT2Y958iWbs9aUrlxRTpTny8U5Qr8yFCyoaKSvekdiSSV+wAawknjTZFf8v8PFr33lXYeL
	1xvdz7RNrnPmjtTLZEoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8WpY-0005jJ-4P; Thu, 12 Sep 2019 21:40:44 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8WpT-0005iz-3w
 for linux-riscv@lists.infradead.org; Thu, 12 Sep 2019 21:40:40 +0000
Received: by mail-qk1-x742.google.com with SMTP id s18so26133408qkj.3
 for <linux-riscv@lists.infradead.org>; Thu, 12 Sep 2019 14:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bluespec-com.20150623.gappssmtp.com; s=20150623;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=M1tKgm33LQ2be99LOvEnyaL0zINjClpzlgxw1sHb68o=;
 b=ZxNG3UE1rPZ298v67rwH4cEBUwN6g6l5LUfSoK6xdTWlsQHAshELJUyZ+ZM/m73bVI
 lZbEaGM1brG04j26Obxm+6oMiUK/KXMQJKBdMjnkQiNLPzgij79ha3R/+DI53hKrkXr4
 /2oG6HgUrtunDlhQXW0tsxyGn5+qMiF3Hj+9editGB9EiFvDnNjlDlaYT+IyTEu8lItm
 05kn50MDOXeM6JxGXkJLac8N60aQVx4mKjfkKECO5AR6MB9gHLxSUWI7HOCpr1aplnBA
 zc81mu57IhERYA6TFbsTqNfTQVYe1vmhhO6TE8GnUaliEUAD3OBs3pH74Unuz3BRp2pj
 x0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=M1tKgm33LQ2be99LOvEnyaL0zINjClpzlgxw1sHb68o=;
 b=tqF8FjfzZ7VZ1O//0uj3ObRXFE/l4qrdaZJBuHXnzLSH+0Fv8mcyYfZX+8UUuUvjmP
 S9xzONXgAnsxOIJ0ELk2XMbmbnyoIPyjo1vdOzDKv9D7F4paEDehn1cHuTwhfaIYxgKp
 w+ggnycTLe2N4dIkPptJVQ5LPKtTC61m2WfECNKGB8jDqAuc4IqKVacTGyz9eG4EcBPb
 mOR6NGLEC0ct2G+f7F2j4cvpsNZSn3/Lr1KKofKPlF9vnEle6r2NhSEUuog5lOtSSzUo
 lBfZbT/LAa1vrM77cRjl8gvYWRVYO4YhkInsAtqzDbHlXmt1ryo+bM/vA2FtONxsZEJq
 FeBg==
X-Gm-Message-State: APjAAAUs7pj4JloxoNS5FyevFJQdzwj+FjBPIIBFJSudMEkrSP4H/OGQ
 XIghV2x/BPCQ80lgxU/aEAzu
X-Google-Smtp-Source: APXvYqwCxVxaVQ2wC/qHP+3PK9ORcfnFnL1tEBD9Lg+B0hzh0k1IoAQzkkDGB3YEqlF0BY4Ddj7F/w==
X-Received: by 2002:ae9:e817:: with SMTP id a23mr12658660qkg.294.1568324436863; 
 Thu, 12 Sep 2019 14:40:36 -0700 (PDT)
Received: from [10.31.10.6] ([194.59.251.62])
 by smtp.gmail.com with ESMTPSA id t25sm10460807qtp.29.2019.09.12.14.40.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2019 14:40:36 -0700 (PDT)
To: linux-riscv@lists.infradead.org
From: Darius Rad <darius@bluespec.com>
Subject: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
Message-ID: <529ec882-734f-17ae-e4cb-3aeb563ad1d5@bluespec.com>
Date: Thu, 12 Sep 2019 17:40:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_144039_211957_A3DC8293 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the existing comment, irq_mask and irq_unmask do not need
to do anything for the PLIC.  However, the functions must exist
(the pointers cannot be NULL) as they are not optional, based on
the documentation (Documentation/core-api/genericirq.rst) as well
as existing usage (e.g., include/linux/irqchip/chained_irq.h).

Signed-off-by: Darius Rad <darius@bluespec.com>
---
 drivers/irqchip/irq-sifive-plic.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index cf755964f2f8..52d5169f924f 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -111,6 +111,13 @@ static void plic_irq_disable(struct irq_data *d)
 	plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
 }
 
+/*
+ * There is no need to mask/unmask PLIC interrupts.  They are "masked"
+ * by reading claim and "unmasked" when writing it back.
+ */
+static void plic_irq_mask(struct irq_data *d) { }
+static void plic_irq_unmask(struct irq_data *d) { }
+
 #ifdef CONFIG_SMP
 static int plic_set_affinity(struct irq_data *d,
 			     const struct cpumask *mask_val, bool force)
@@ -138,12 +145,10 @@ static int plic_set_affinity(struct irq_data *d,
 
 static struct irq_chip plic_chip = {
 	.name		= "SiFive PLIC",
-	/*
-	 * There is no need to mask/unmask PLIC interrupts.  They are "masked"
-	 * by reading claim and "unmasked" when writing it back.
-	 */
 	.irq_enable	= plic_irq_enable,
 	.irq_disable	= plic_irq_disable,
+	.irq_mask	= plic_irq_mask,
+	.irq_unmask	= plic_irq_unmask,
 #ifdef CONFIG_SMP
 	.irq_set_affinity = plic_set_affinity,
 #endif
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
