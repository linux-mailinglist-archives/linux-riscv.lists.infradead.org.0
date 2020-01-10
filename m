Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8E1136B42
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Jan 2020 11:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=42mwvroZn5D/LVSfX44AjqAGuuEshUhGIY/O55rHNeI=; b=sVxGStWXZfbUai4Mw70ktoCAu
	4cOVP19/ruSboXSkZiJEEytjJS730WE9mqtiJRRb1gp2ASynr0FBsYhB5ffr0CSk9yxtc3g3PI3pq
	eZuHfD4qVtE8AR+WOl9paZi+CcchWmFB75axBldMoKLq++yO2K7k/G3+3ZD8cYR6btUDCXuY7z1dx
	M/B9o93eVek3zdY8Wm8xFOOhKshSDMkAJNmE51HHQtwEV6eHQISq+SkLB38gXOiSSqgFLg1g6/iR1
	NcemowPTob76SjnW0N8t7xTgBNZC4cZeIMKHRzc8BQEhIo6ZzWI5+HC/FGpid0+0p1WvT7wbTJYix
	uOFe08eFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iproX-0007To-1X; Fri, 10 Jan 2020 10:46:49 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iproS-0007Og-3l
 for linux-riscv@lists.infradead.org; Fri, 10 Jan 2020 10:46:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id k197so815153pga.10
 for <linux-riscv@lists.infradead.org>; Fri, 10 Jan 2020 02:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
 :references; bh=42mwvroZn5D/LVSfX44AjqAGuuEshUhGIY/O55rHNeI=;
 b=PO4wwiU3DoR9x0xd9nS7scCQwBINyo5RbwvD3SRClmUO3SKfq/fSWsAwuyGPmv80/b
 aM8/zs2oNzKkM9jcS4mkAuTMQ1aTpzD31KPfeA6zuWC2RAc5/RkZgeVapRI6P4bZEh73
 +eV+0zF2RmMjyrYqjYmwf/izVUxsbndYe1/awn9CupsIqV2udsu1vxPH07+U0m9nLxvs
 LoeL02JKKS2BIg5ILoRshBLp/3WcslYlPnR5e5+CzvpkWMRfXj4luDNupgOVBMGWxTNb
 fQXz8kgwXyQGI+OL7YNIAYHiLTlDNNbbjwYoOLrbx/bPmAsu9tih57gh0ZV/vIskO11v
 i2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=42mwvroZn5D/LVSfX44AjqAGuuEshUhGIY/O55rHNeI=;
 b=Xr7ys/k77lDYEEDcLHLLIRqaCeqSWZzVKRLfU2kv7OmHgld1CbJoEiDGb+SzHCEYVt
 Dy4zzbxUBy+eThPO+Ep6vEx0hi1DnqhRkPW0u5s+AfC23lbQNtw99Z4z2D1edyJ19C7S
 JKk7kAH6Q3klEZawlSu9JIGtqRFkVoQXdifPVjNJzn/4qdo7lhshAYGZizt/5t9+TwzK
 uvu9fl5AJRHywtrkWU2NTgCioslamRVoTWguMkm5NuolGq8inro9M4XVt9V5k5rcGltL
 MGUd/Xdo6+P8HVtgUwDW6g1edzcIV0GmZm5mH4YNOVZcVQ7VpGqvDiGR8xyc++i9iQTJ
 p5Zg==
X-Gm-Message-State: APjAAAU9foQkRjFrkQTdzXyqv7jNtvlAngP+qk789QVy0diDhbCks6s5
 S7WX2csqGKOkXGUWHBzsrTOH9A==
X-Google-Smtp-Source: APXvYqw50CIZl37GWxKuDHsISFVb3VRdnwoPtm+aVoqB9BSxCjsE6idB+ZSXSU3xHCpEwWgiiR0KbA==
X-Received: by 2002:a63:7843:: with SMTP id t64mr3592350pgc.144.1578653203165; 
 Fri, 10 Jan 2020 02:46:43 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id e10sm2590901pfj.7.2020.01.10.02.46.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 02:46:42 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, greentime@kernel.org, anup@brainfault.org,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, gkulkarni@marvell.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 paul.walmsley@sifive.com, hch@lst.de
Subject: [RFC PATCH v2 3/4] riscv: Use variable this_cpu instead of
 smp_processor_id()
Date: Fri, 10 Jan 2020 18:46:26 +0800
Message-Id: <5a30a3a637af05041780214287f46ea576818c99.1577694824.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1577694824.git.greentime.hu@sifive.com>
References: <cover.1577694824.git.greentime.hu@sifive.com>
In-Reply-To: <cover.1577694824.git.greentime.hu@sifive.com>
References: <cover.1577694824.git.greentime.hu@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_024644_151972_56E9D511 
X-CRM114-Status: UNSURE (   9.66  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

To clean up codes in smpboot.c by using a variable this_cpu to prevent too
many calls for smp_processor_id()

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/kernel/smpboot.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 8bc01f0ca73b..ceef7c579aeb 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -46,6 +46,9 @@ void __init smp_prepare_boot_cpu(void)
 void __init smp_prepare_cpus(unsigned int max_cpus)
 {
 	int cpuid;
+	unsigned int this_cpu;
+
+	this_cpu = smp_processor_id();
 
 	/* This covers non-smp usecase mandated by "nosmp" option */
 	if (max_cpus == 0)
@@ -137,6 +140,9 @@ void __init smp_cpus_done(unsigned int max_cpus)
 asmlinkage __visible void __init smp_callin(void)
 {
 	struct mm_struct *mm = &init_mm;
+	unsigned int this_cpu;
+
+	this_cpu = smp_processor_id();
 
 	if (!IS_ENABLED(CONFIG_RISCV_SBI))
 		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
@@ -146,9 +152,9 @@ asmlinkage __visible void __init smp_callin(void)
 	current->active_mm = mm;
 
 	trap_init();
-	notify_cpu_starting(smp_processor_id());
-	update_siblings_masks(smp_processor_id());
-	set_cpu_online(smp_processor_id(), 1);
+	notify_cpu_starting(this_cpu);
+	update_siblings_masks(this_cpu);
+	set_cpu_online(this_cpu, true);
 	/*
 	 * Remote TLB flushes are ignored while the CPU is offline, so emit
 	 * a local TLB flush right now just in case.
-- 
2.17.1


