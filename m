Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7941C3185
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 05:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XPS9L7ysttmLvsFDSLjv2rycXWe2ZfvFZhGUCSkxjGY=; b=UmaBpdNwJG4/5d
	LnkDbIlvAH9woEy10EVJwwQNnIZtld57OL6/X4paQD5wFlTFiva+64VgoVw5TZKv7ul99dIXmnr0b
	gXdl87KrbB/sY3YjK4eeSI7i29ATawxSI/hJrH4Wu1KJVDjSWlIh7kdj8RCF/k3f9cXg/eOgVsPyE
	jyo5zZu3R3y6Ad/B7KKR5ArRVBQDCEhcHeBn7i7yy/jJ8asB2bE3eJnLX4mgLTWyNQg4bUeqMQwhg
	h/WbsrmwoE2hayglJ8yWU1uvB/3v+Hyeh1oF21X66+Os5akuRjSQjE28q3GBGukTuvzuaLH9tYPon
	XDVbsPkP/sW1/YPIbUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVSC8-00088S-25; Mon, 04 May 2020 03:55:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVSC3-0007pR-Bv
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 03:55:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id x10so596763plr.4
 for <linux-riscv@lists.infradead.org>; Sun, 03 May 2020 20:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XPS9L7ysttmLvsFDSLjv2rycXWe2ZfvFZhGUCSkxjGY=;
 b=d2jI+fONjp02mrsO6Uj8FaugmVJND0kJy1zkWCVpyEHjP+U5Ogv1/6GYeqtD1YjJJ0
 1u2Ie9j0nzRiJzgz094DNjNWsF0xtBVFolMNQt5AMt9Nh6LfN45UjVGJm/EZ+Bfu7xuP
 y/6DmvaMfLlfTtOrs4TgtSGpucDR72h7WdVYBXJAQ7ELZQPmLv0swUrEsFBuWC600XsH
 EFOxD+D025lGykwqsIf8iZh9Ija/JmJNYka+eFpLyvcR66rpTQpVRgovJ5r+RdM858zc
 Wu+5seWYAZKM/gRIryBX0mFPjAqiH98W0Ra6imguVrllw+uwoz3TvRfCSyUo6CXj0Iff
 +axQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XPS9L7ysttmLvsFDSLjv2rycXWe2ZfvFZhGUCSkxjGY=;
 b=ZXskQIGaR+lWYYIb00uto107CTP3bZwC6GYAMfzzqKMUJs98TZFI5JpWExdZj8/y9g
 t2FhNLVcfSpVCe3N4ImFfeZ8GfT7gckRvXUsUrmh9R9n/Z1GzVqWfkxv2qWhgwhOABnH
 jl614kS9e2rSKv0Mlg5jhyofQIB6VHyqAN1Xa/IqIAuN9fUP/Rw8Q3igyyBxgQqvVxks
 ykb5654mNkiJ90e/f/zqq0ZFaM77qkgWIhe0WHURbXXtklbbD5JDVfmmPOl+kP7tnKMu
 lO77jrWWk7h8tXRpBRnRzerFE1QEIyYnxOUziDA1pUrpLMyXRV6zL3nPQjbX7CiviIfE
 Qi/Q==
X-Gm-Message-State: AGi0PuasCJDrQJvv2EqUdMZH0Vpy6fe22Bp6fUkq+saWaVEz7cTwOB9z
 bfxV2Py68BJgZyE2OQe8m6z02Q==
X-Google-Smtp-Source: APiQypKXHm6qgJnASYh9JyzGCcO+f1+hXHaMNhb7B0DDfNO2HO2/dYGRHAzaXDuFc5W6srF/piUbiw==
X-Received: by 2002:a17:90a:3422:: with SMTP id
 o31mr14921071pjb.18.1588564495228; 
 Sun, 03 May 2020 20:54:55 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id b1sm7335121pfa.202.2020.05.03.20.54.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 20:54:54 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, atishp@atishpatra.org,
 anup@brainfault.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] riscv: force __cpu_up_ variables to put in data section
Date: Mon,  4 May 2020 11:54:48 +0800
Message-Id: <20200504035448.13893-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_205459_439600_54B50A6C 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>, Zong Li <zong.li@sifive.com>
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
v0.7, it had included HSM extension, all the secondary harts are
waiting in firmware, so it could work fine without this change.

Changes in v2:
  - Add commit description about random booting.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
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


