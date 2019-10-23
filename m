Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE49E2073
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 18:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j1G0w2UFrRnm8vXRQbBbruMab8Ht3KRwIlKdSeUffik=; b=a5z
	wBsPzHVOxGoz6pdmytJldqgZNjjeybJ7kSZMIuGDI2h4pbwck2IqcMJ32sv514+/LBnu/ui5a5Bnd
	ujIrlNDz+3FbnsLBQnP+qf7iykXExy1GDyupONzjENoovUDMGeUdky2nmGSbv3fnCRlkfXaJJZ0lY
	WBzm/UBRXcZ7u8kupI92H6w5hXv8gCiA1OPqMftoZkQ+6fQTR23R0Jhn/SCqhGZH2rwZ0ZdCeQEwg
	5Bc9JyGyUVvlD8n+uIlLSQ3hd2imQ1lXxncQapIrjEJRrAkFif2nDqrHwmvbQ3nnZVCe3SKfzbVzH
	JH+GrraUtQI+a3JQdkVB3PZk2hYDswQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJPK-000120-1H; Wed, 23 Oct 2019 16:22:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJPH-000111-KQ
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 16:22:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id t3so12428142pga.8
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 09:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ilmfO6H+RDidCkh9jA09636tYNrmUwzLUqDZtBlewQA=;
 b=UMt5+eksXZx6l05Nk14XEFLxERC+9XYYma9NsObhXUcOtuU29glnUumKRZB3n1JbWD
 rQmD4+TgqM0a5pLy1PPi/8bUkHy0AcUq02FwWZs0Hzv6Ng5+iPkfo/vqRUCdvSQXWWeI
 D8ohT2TauGtBE0RdT9pufYzcJMvOm38NUqT7nOtsrlHumhobyZyYaANeBxXHu0a1maX4
 oK1VMFe5fDGTDhV1GQEw4qYjzj5kOEQ9mphrSTtuFvgr0kjx/0PDHTn4PGnfCVHVddBf
 ROKFcfWqqNBQGdDH6UnJb6tmkKVfxT5YLYSNNm7EcG3EQ2DvH/jlqyIMjzwhX5K3igSN
 d7RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ilmfO6H+RDidCkh9jA09636tYNrmUwzLUqDZtBlewQA=;
 b=KX4FCEDj1ILKO5svh+gUtxGKoR60gSJa8Mvtfbn5HLKqun7JcqG/1t8lD9vR8zBINy
 4gKbOuZ+5DJohIhx2b0RCA7XMalW1VMziQ48JW88tvDQl5YZnx7jcVwra1TvgsWA/PG7
 XpepwDNAuJ3lE+++Ui7FVwsIyjJFUTmUANwyTzHfBV4PsDOo4Vh6ITxItluoYYTsZS6q
 cfGFo74ZDDoeNqDxWveM+odVOpL/lmNVJMpUOJ4aPwhzkxUpqLwRMtVqPDbRKwGnn3Lv
 aU+RDyub7KZJZyFl+ic+NYyXoOcO0VpY/c9F+UMWWQ504aIXXlPKyPlrul8Mzjrqe/lj
 zHgw==
X-Gm-Message-State: APjAAAU1NpPJkq4Qm1bWRWbIw707Q9D3NtLUUvIRqN7NXTOLLUuwgZT9
 U34gl9y4Df1h97v5bP6mLXBFCg==
X-Google-Smtp-Source: APXvYqxmDgsKwhLzcdRg8Xt24WJjbRby8byrWsA3Dv6X4xlq5cd64AnwiNsYkBsi6F6m6BBs2x5Afg==
X-Received: by 2002:a65:689a:: with SMTP id e26mr10944113pgt.346.1571847760808; 
 Wed, 23 Oct 2019 09:22:40 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id u11sm33434233pgo.65.2019.10.23.09.22.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 23 Oct 2019 09:22:40 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
Date: Wed, 23 Oct 2019 09:22:35 -0700
Message-Id: <1571847755-20388-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_092243_681246_6AB5C74A 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Alan Mikhak <alan.mikhak@sifive.com>

Modify plic_init() to skip .dts interrupt contexts other
than supervisor external interrupt.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
---
 drivers/irqchip/irq-sifive-plic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index c72c036aea76..5f2a773d5669 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -251,8 +251,8 @@ static int __init plic_init(struct device_node *node,
 			continue;
 		}
 
-		/* skip context holes */
-		if (parent.args[0] == -1)
+		/* skip contexts other than supervisor external interrupt */
+		if (parent.args[0] != IRQ_S_EXT)
 			continue;
 
 		hartid = plic_find_hart_id(parent.np);
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
