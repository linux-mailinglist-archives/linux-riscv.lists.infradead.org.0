Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7166085C4E
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 10:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7TylQlEGdtTwPjj6VyTtV6LVM0K30XuYPU6NYJQ99jU=; b=GIuLx7adV6xENw4APJAo0OvtH7
	nArbUMWjKqHQ2wIs9EPdE+CZ6clZ1xqq9LIo78kNtq9TlE6bDZXgBC7yd/+sY8zmISELIFyLv/YMx
	7qjyYffVbR/t6+Nbkt2Lcw4cUCr8GIkGEuTQUn2hbxYWvtMlOlmOMzDauTQMm1CwbKZHSWJJjuhH1
	wlJS24SJsp6bs+Ir0xOMv1DnW8Y6CcfkfM7FEFG2XzitgYXMOvCIkZNsnt34gHeLviHGb2pcszSon
	ul9tLg3poCb7Z1m4/vG/2VX47OqxG1SPuhMsOjr4RzwUj/imk9JV0p1MtuJD31yg6rll5tuJYRi5U
	m/lkR01g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdLk-0006pV-Qs; Thu, 08 Aug 2019 08:00:40 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdLB-0005at-0J
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 08:00:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id t132so43624106pgb.9
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 01:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xMV6uY/vHKVkmIKzViydmdx5B5e/xYSR7IpOeW3QoL8=;
 b=h2q0oFr6RoQTAhYh9x7GZGp+e7kwYU3qvNAgbY6MX792jT3Zcvv9hdNTD84955pr8g
 FDV6QHHKfYGqd5So/bC4uFNydlNxO6ZY+ADSeZTY9ESDL71ySAAhewAFPUobvN1i2d7Q
 pADV1J9r8hvb6WhxAAq2rXg4E0ZfOF9G5jShMjxJ1HI6F0SFUe2xKk7Y2QA0zCIjXkK9
 RjszYfVEJOa68PGiNiS4e92mFNICczNniUepfrudUghE+up+YhHmrmRtwyQJ2aAt0VPv
 yoOUu9EGBVRFn+lWBdL7Ux6dqPc0V5AnEzB7C0s59aSjSq6fiS0lvSssgKIcbKSiLwyA
 yNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xMV6uY/vHKVkmIKzViydmdx5B5e/xYSR7IpOeW3QoL8=;
 b=Go9gnpETYdI5GKTkR+IFxQq47SdkUrYM7+sAA27cUv6A/Alyk97CQero/TBv9Zs0N9
 6qHgoCkbZdaBk8L9GYmIenolOLhxwJJdYCER/Rf+MvEPonk8a7qhxDlfJtM4PvDkDJA+
 e56svx5HyvOo4Rf8gfc/p8OK6dihcfMiOt8bnjSeMOkQuhWLupqj9U/KlrQ6KMYWbUBO
 wXRqsMxpWE6OnAgZrZfamIYikNxIVyDYSPeuvtgb26UGBZxo94MDO7k7FssO23JjeoU5
 xj9WPr08f3wXXYFp6NnRYDFr2N1d31p6aHwGcrw4PcuVII2Dc89nonLWELxfeBBxTrMO
 FB7Q==
X-Gm-Message-State: APjAAAV+ZPO1A+IjQ5KomjsqW80bUa1x21tIzsMOW9sEFiDALjBBEkSP
 Dhn5tY+FAiGopIidmz9OuFKJ1g==
X-Google-Smtp-Source: APXvYqzl/u71XCsVZLGazpQDqHur9BQxABWwvYEfmrFrgDr0o52f0uN0nguGi1Az1khXp/60g0wxDg==
X-Received: by 2002:a62:1444:: with SMTP id 65mr13849575pfu.145.1565251204644; 
 Thu, 08 Aug 2019 01:00:04 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id t8sm107697374pfq.31.2019.08.08.01.00.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 01:00:04 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@sifive.com,
	aou@eecs.berkeley.edu
Subject: [PATCH 2/2] riscv: Make __fstate_clean() can work correctly.
Date: Thu,  8 Aug 2019 15:58:41 +0800
Message-Id: <1565251121-28490-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
References: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010005_668099_3C4E46C6 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Make the __fstate_clean() function can correctly set the
state of sstatus.FS in pt_regs to SR_FS_CLEAN.

Tested on both QEMU and HiFive Unleashed using BBL + Linux.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/include/asm/switch_to.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index d5fe573..544f99a 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -16,7 +16,7 @@ extern void __fstate_restore(struct task_struct *restore_from);
 
 static inline void __fstate_clean(struct pt_regs *regs)
 {
-	regs->sstatus |= (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
+	regs->sstatus = (regs->sstatus & ~(SR_FS)) | SR_FS_CLEAN;
 }
 
 static inline void fstate_off(struct task_struct *task,
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
