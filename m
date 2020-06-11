Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391381F6D0A
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 19:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fp+zT9km85FGnqPFWjENTTSWII2vpTFTYsBocgH2XVU=; b=q4D5zjDg2PPt0n
	ElJh6Psrcw8a2PS+eLVfD3mi9tsOOyBkXxBHj0uaOisWW9YyTKpVsFMOPT4uZkQbksoCYoAbK5Uak
	mOyEoUpEQ2nmfLOqC9fj+mJFPaEC4LC9aT6BlNTVFwLIlpJpOWzv6G5pV6NvOIcT5lPIBEZ0XJyzr
	SyihA6hc+WcVL1AIvfEZKGkoumRkK3nK7qoN5D99UZwfpYV7PeFJsu2WW80aDs3SO07d1CJo+UGoZ
	l8UtmQAeRfgzOVCe7wPtPv72FwvfVnK6VwRFq3GRt6Bd2q+13HCNmw2kwbMHC0Yem1FoFZjve1Z7o
	dm8igKBkvU+1QqCFdHzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjROz-0007Ik-7Y; Thu, 11 Jun 2020 17:54:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjROu-0007Fn-EK
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 17:54:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id k1so2497656pls.2
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jun 2020 10:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=fp+zT9km85FGnqPFWjENTTSWII2vpTFTYsBocgH2XVU=;
 b=gz1R9td3whTeOsnqSemH0JyPz0DUhMYRZ/g6Y+uKLaSh8mDVJYFxq2wrTuBuifrbVM
 ataNaaREFegmXoYMPMCfluJbCgkYlEHrc6eYq8uyVrmRV6bq2HB9RlYfs1HUhs6KxjI5
 qQWCthLhkECbEA5aFgpw7tev4PV2Ryt66M212/OfKbWBCbC5HPaW5kebFyhxMwztSQoN
 hP47iH0khzkwDpwiuu5Vd+9K4dscf3oo88mR/efR/N6i5UoDginbNAkp864ZlXlUS1v1
 i00Chv3iI6i33RFDfYWM/ZRgkKARPnDAiQ6V3mI382DOeQuIbvEAYEXcn08/GFJwk4q/
 HdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=fp+zT9km85FGnqPFWjENTTSWII2vpTFTYsBocgH2XVU=;
 b=Pk52Rkq8NQVSs9nClgZLvAymim8lmIhXvH1AC2d7TVlMvVcxnau5GEbIrQwIjsf8Ut
 NPr6cPbXu3y0utCodF5PkvLsWF7GI3U5ZjtDHHpfKWbqkiN96DHyeE3CIGvR9xFCj7I7
 nZLxa6mmtAGjeR0ygcqwy7AbE7nF2v8GfDeCwMH15qjqLF+y0oMCGylSbzWVuGWVJUvG
 MT/0OcjbXX/qgGuGYc3m85pyJUmw6OVMoGAW+eKXNLD8blPH8cceKJuKtkoIDTwQIvqn
 CpZCidy9i4pf+bg7RuRaKbiHtyF2gwaNBnlU4q4/kV4FoZTIIGFqx4K9kH1haeFJTWTq
 Invw==
X-Gm-Message-State: AOAM5314LlBiyjXzmnHhj/AVAWk4JcVOfPS78X1MFlKQLO3jZKOcavDH
 lsVAJxAfeix3OHQAf5F5A8tb/w==
X-Google-Smtp-Source: ABdhPJx0LZGJuQSD2va3G0YwfetWlhas45vjWWqt1GSueHT4DcNiF6Lm9+8FFZQkMBwcuGYjsy0m9g==
X-Received: by 2002:a17:90b:46cf:: with SMTP id
 jx15mr9184990pjb.121.1591898043186; 
 Thu, 11 Jun 2020 10:54:03 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id x18sm3726356pfr.106.2020.06.11.10.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 10:54:02 -0700 (PDT)
Subject: [PATCH] irqchip: riscv-intc: Fix a typo in a pr_warn()
Date: Thu, 11 Jun 2020 10:53:02 -0700
Message-Id: <20200611175302.253540-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_105404_478417_22EE8959 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: aou@eecs.berkeley.edu, jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 tglx@linutronix.de, kernel-team@android.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

Anup originally re-spun his patch set to include this fix, but it was a bit too
late for my PR so I've split it out.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 drivers/irqchip/irq-riscv-intc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index a6f97fa6ff69..8017f6d32d52 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -99,7 +99,7 @@ static int __init riscv_intc_init(struct device_node *node,
 
 	hartid = riscv_of_parent_hartid(node);
 	if (hartid < 0) {
-		pr_warn("unable to fine hart id for %pOF\n", node);
+		pr_warn("unable to find hart id for %pOF\n", node);
 		return 0;
 	}
 
-- 
2.27.0.290.gba653c62da-goog


