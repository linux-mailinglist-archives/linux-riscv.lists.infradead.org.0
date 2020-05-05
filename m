Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6301C4E6A
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 08:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b0cSV3VIHWOti9hEY160GUxOocjb2RCw+0GAblBav28=; b=aC8IU4J2pAKc4G
	TiPMtIPLp+esFPcvw0UeK6UB4mkn+ybm2HQUW/igY4JLvq25jDt9ybICJyOPDCoUBP6d0yleLALxN
	MobfzzncXFgbvm1HuBKb0AIcd4tkyBjEQ3zsVgTRGTnSzgrbaBzP2a4muozKq8KwLtbCGbM9bmUao
	vpA2CGVPcohnpJfThV8+be8spWUe0c7UVzxwi/EKJF39rY2RjgX3KUbqShey0/mx7cy8CpImxOaxS
	hwYuYPQW3dDzPchzXSc3otL9zGmOy4Mn63yqsHNWMV3DpKRFSilzkPbqXm9HEpD7g68PIrYTxr7ck
	aZAYACAWyUiyB0zH6Hiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrGc-0000ta-PI; Tue, 05 May 2020 06:41:22 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrGZ-0000si-Ce
 for linux-riscv@lists.infradead.org; Tue, 05 May 2020 06:41:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id x77so431089pfc.0
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 23:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b0cSV3VIHWOti9hEY160GUxOocjb2RCw+0GAblBav28=;
 b=jdx2GA1koza677xbRvZximfAf3eGqC7089PhpVhfCaxhySIm3yOjCP9QXvpRhy04F3
 oG7tyrbqfcEr32erEqjE7Z4UoG3MR3xAF+S8B3PPxGYNWfOndefMsxQYIbPQX9dRyIgv
 xTCuzdHkr2Yr6X1CewqQeGNwmj+HA2xEB/y9O27sQZMIi80o6k0nPFd8qZ8Gc9PYMs4P
 sI2G9wE1tO6OMvUE4KxQtmYL0ACqocC8upwIDbEr6kqrIpiTV6gbqH1AQ3w/3UdZPwyX
 QFuBgyKLJgXrGF27aCnZHVzGUmPuIa717pzkI8uXOMGX5Q1D6/AnnEYexa0gavRMcLKM
 4iLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b0cSV3VIHWOti9hEY160GUxOocjb2RCw+0GAblBav28=;
 b=NmiQuXMrKDnC27n1WjSnbaByG/cHas3m7Z6Jd2wWs3OGfNFgVwF+arOCBjQTFEAsPa
 4D+b8+A19K1mXH6PcFXbzrrSLRgfsk6huuxhZv0LP5wJzdsy0OI3PFaZFtB37QoWmXZE
 UWaKefrwP++KzqWkF6V+RalFLK0AV+zGfuNAgMVK/M7LflI+COkjQ6/Dd8YCLk8Xf631
 R01ruCNuv20n4cn91KDe3pW/bQp4FNbjJT1JZgXwIZf4K70ISFGsNu/+eaF+C6H4RSIo
 zwudIFvrBDKD53mxm6L0e6i+mDbqVVJkM6JkOqMgvjbYRoPjf+lPZTa4M+brIUnXrTn/
 MCww==
X-Gm-Message-State: AGi0PualDY6TFy6SK2mOAhprrcw9oadO/ASSgfE0w/B//cVgb/CZD6e4
 CCfXodH0fQ2JSL7OGWbmjhfQAA==
X-Google-Smtp-Source: APiQypKGKEIRzYStVQ9WNqw/QSkSxDNZxHPjYla+bZdF1kI2qQtde6vSpCmlnwhpGdMfNCdr9rBAlw==
X-Received: by 2002:a63:4f08:: with SMTP id d8mr1796556pgb.308.1588660878274; 
 Mon, 04 May 2020 23:41:18 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id t188sm822858pgc.3.2020.05.04.23.41.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 23:41:17 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, atishp@atishpatra.org,
 anup@brainfault.org, schwab@linux-m68k.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] riscv: force __cpu_up_ variables to put in data section
Date: Tue,  5 May 2020 14:41:13 +0800
Message-Id: <20200505064113.3455-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_234119_436683_9324A733 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>, Zong Li <zong.li@sifive.com>,
 Atish Patra <atish.patra@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Put __cpu_up_stack_pointer and __cpu_up_task_pointer in data section.
Currently, these two variables are put in bss section, there is a
potential risk that secondary harts get the uninitialized value before
main hart finishing the bss clearing. In this case, all secondary
harts would pass the waiting loop and enable the MMU before main hart
set up the page table.

This issue happened on random booting of multiple harts, which means
it will manifest for BBL and OpenSBI which older than v0.6. In OpenSBI
v0.7 (or higher version), we have HSM extension so all the secondary
harts are brought-up by Linux kernel in an orderly fashion. This means
we don't need this change for OpenSBI v0.7 (or higher version).

Changes in v2 and v3:
  - Add commit description about random booting.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/cpu_ops.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
index c4c33bf02369..0ec22354018c 100644
--- a/arch/riscv/kernel/cpu_ops.c
+++ b/arch/riscv/kernel/cpu_ops.c
@@ -15,8 +15,8 @@
 
 const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
 
-void *__cpu_up_stack_pointer[NR_CPUS];
-void *__cpu_up_task_pointer[NR_CPUS];
+void *__cpu_up_stack_pointer[NR_CPUS] __section(.data);
+void *__cpu_up_task_pointer[NR_CPUS] __section(.data);
 
 extern const struct cpu_operations cpu_ops_sbi;
 extern const struct cpu_operations cpu_ops_spinwait;
-- 
2.26.1


