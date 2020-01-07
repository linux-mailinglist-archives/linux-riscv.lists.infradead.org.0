Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A9A13220E
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 10:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7oMdgWioDWITQzSI98n4NagJatFFPYMLbqTtAUUpj0w=; b=Cg2now6lIuHFZEpis469ddqmYa
	I55Qf9D1Ki2DNo+LkTX/lRUKRVnZjZUvLLBw0VnyvQG4bR/vtM5cjnJXbtkh0V8koaJBtWjmAFW82
	OiIIgi4FPZONdXMLuPojj8ouaY3rpYXQcRl3vORhkwydaFJIqxpafkqXzHP3IQoFK7c6KPPXIswJn
	BuiYlQZS/TEBH70fyQouoVjSDIqMi1M6NKhT97Ht6axJ3HUTyUmU4wEzdoeqLXl+dRgNm4RWBZd7e
	QCBb/Bpv1BBJM1zy5i+wvwu7ogmpmI8OTALGsHYPZUP2V7ckntHPDTyqiK2iFdxrarQyR0iGkERDu
	YLeL7L1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokyg-0003mG-TY; Tue, 07 Jan 2020 09:16:42 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokyY-0003dd-7d
 for linux-riscv@lists.infradead.org; Tue, 07 Jan 2020 09:16:36 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l35so8996856pje.3
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 01:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=7oMdgWioDWITQzSI98n4NagJatFFPYMLbqTtAUUpj0w=;
 b=muBYzEDf3kXREd5gF/6B8QBbwzXQ3RFt696Xz/URWaNaLG9ung8yAF+OK3RJKqO3t8
 3vX9swBxnsrQyh/mJZkDaN6vc44EeKnHTyJZSLsbAGFC8BMiZJZjFTfCyBpYeENAz0gV
 n00TprtefUwyHJW71jx+mQ9WY4I/ucnCWax+RHAcaIMyGwYhVEoat88B1c61uUNdPGzC
 b9j19ZZP09ngqo45VMdPj7mhT13TKoT6GkpklqR4AOkfmWggI/3u6+YW1Gf3Y1yH2rje
 sYxiy5MY08iUZD9pWNIeLV5+lpBblpq2ncFB3OWfvEVjGhVh/yM9ft6FIo8fklLXvF8X
 gz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7oMdgWioDWITQzSI98n4NagJatFFPYMLbqTtAUUpj0w=;
 b=Z9AzX2bieSZaiB46Zu/Ye5tz6o5IzmwMajLliAyu6zP16ARHqVaeHxl3IQ5eLjJNqo
 wneLghFwlaQJ4e6pNN34OOfv5uIfrnVc65xvJIiP7jFA3wgiOf/EJjHCYB8izbEmFEEr
 nVBYZ0zJH4maF6d6xtUV/8DpfiJEcBeoHpY8Qb3qsItkMuMIN3uhbAjJMj5a29MgUcTI
 eWOasPXFVtMZnuadNL7O5JtAOv6zutCTcf3u/IekZ9j/45JS0NIY8Mj7Oj0/k4Ug/7NE
 gB3Xja2Pz1bOlNGxt0k+gRjOW+hv9gAK4jnl5A0mhGK4uZHte6k9Ar314DUDKulc8ZYI
 qKgw==
X-Gm-Message-State: APjAAAUdIs5rACeDCq7OMCJTIgmzKIZ+8kEW1pudt3AAyfYc3QDCu3Wq
 taNtcr4WMe9CACHWESd/vIegnw==
X-Google-Smtp-Source: APXvYqxjLep94Ti3iFTWlLDf1xdX+FyHt3IAErpNxzG6ui1L7m8uCDC6PAwPl7aQSChPTwNjZZihzg==
X-Received: by 2002:a17:902:9684:: with SMTP id
 n4mr44455505plp.154.1578388592754; 
 Tue, 07 Jan 2020 01:16:32 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id s26sm48350814pfe.166.2020.01.07.01.16.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 01:16:32 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: green.hu@gmail.com, greentime@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: to make sure the cores in .Lsecondary_park
Date: Tue,  7 Jan 2020 17:16:18 +0800
Message-Id: <20200107091618.7214-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_011634_410893_9D03A6D2 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The code in secondary_park is currently placed in the .init section.  The
kernel reclaims and clears this code when it finishes booting.  That
causes the cores parked in it to go to somewhere unpredictable, so we
move this function out of init to make sure the cores stay looping there.

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/kernel/head.S | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index f8f996916c5b..d8da076fc69e 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -217,11 +217,6 @@ relocate:
 	tail smp_callin
 #endif
 
-.align 2
-.Lsecondary_park:
-	/* We lack SMP support or have too many harts, so park this hart */
-	wfi
-	j .Lsecondary_park
 END(_start)
 
 #ifdef CONFIG_RISCV_M_MODE
@@ -303,6 +298,14 @@ ENTRY(reset_regs)
 END(reset_regs)
 #endif /* CONFIG_RISCV_M_MODE */
 
+__FINIT
+.section ".text", "ax",@progbits
+.align 2
+.Lsecondary_park:
+	/* We lack SMP support or have too many harts, so park this hart */
+	wfi
+	j .Lsecondary_park
+
 __PAGE_ALIGNED_BSS
 	/* Empty zero page */
 	.balign PAGE_SIZE
-- 
2.17.1


