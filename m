Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C6B1B5735
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 10:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hzRDD48xFUrA06Ue8NBhsWE/moaDYo7ZK1jyb0jNuD0=; b=uB2jR6JiBW7cn0Mw+BwbwFpz4F
	4j1qG+JK6e3DtSk9EKsCYiWMwVB3L5ExwDOvvqZi3COPblZA51P5TbKYFb1SZdU7ltixVGz143WZG
	hf7WHFTDGlX/zCoU82WgFOskS6ZflcPNQxwJvnIYgvmEV+JwICLoSDS3CMPAWKFPecrD0R6++KocY
	Gy5fptnvmJfzXddkackGlMHX1x0aAjB0Jnnik0qv1tlFW0mHCkKH0dnnfrnbY+wo2YquoMugaNr34
	ifHAleLQ5lOnlNy1QJF45TIuxl3ug1fKmquC3yJrvG0lSC+o2w09nZGZmOrWfsgR7Mp+rjM65wpOD
	kMDYoKvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRXEq-0008OX-UH; Thu, 23 Apr 2020 08:29:40 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRXEn-0008Mo-8K
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 08:29:39 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e6so2208919pjt.4
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 01:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=hzRDD48xFUrA06Ue8NBhsWE/moaDYo7ZK1jyb0jNuD0=;
 b=iTWThHAnCYxEyeq4dQ1dXsiC7Wp3zOdGAP7Zy9fcspMZ+snjBrljpjR1bq4Vs1iV29
 MApq4g/+8c59X7qUTQM5ewwp/71aZnugslIg7PfYjMOtH3xrvB1oors/urEgKCwhN7Vu
 zkbv7ewIGmyCF+7oL8FvMBBwI50AwEiM5cXJS5rmh/sS7wgSVRcJ1OELkx7UnGxSBk8C
 MWl7I03fhu+peNG1pYBnt/4Tp4n6LEirSDbPUw91rWhMhFYOKk9Bl4HAS7FMkmxXLLJ9
 OEm4w3E8WfaYKK1rXrrzCMGxCVPUflfDQbBPXGTlPQKIxqe6rhrpgt9bKOR8R0GGMaOC
 KIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hzRDD48xFUrA06Ue8NBhsWE/moaDYo7ZK1jyb0jNuD0=;
 b=E4qLe1dT+nQUktb0bqPLCZ030GBaHK0oOSs/YVmOt+H2JWew6iHqHHEpRNtx8WxIMz
 0BmyazgoWcjoSjC5CuxEn+BgYEv4LoReHNvoRq5XzcfvZ5lwZJUiRWmyBvDF6Wy65BAP
 LvPhXT1+i1Y2n/8f/0DmErvAiS9dRKwTtdp2gZYy0yLRKBoGPYgYpQXtHLiHUuDwZQEN
 E0qHra51CTEq5TIRHFros42aVzUGHfSg97Am04aVFUF/1Cs94tyvhSsMxjF/8BnscwGb
 LksK7NzjxU8WdCQkzzBxY/4x4JD8ucjromqcZO3vyeeONlzCw+fNtR+M1oVBHSibXABj
 Nrtg==
X-Gm-Message-State: AGi0PubjV3dv7Euz0VhM64amnPzjMXHE0FkaS1EpTwhxLvcFz5z69Ln/
 9bevj3TtdwCQB05Yr9P5tj0fuw==
X-Google-Smtp-Source: APiQypJUZq7EaXC2NW3emWrf6+jpevsEQRhtbcESaFoVKoM7N4Edpusni4NzmWg5jkZAgw5XULksEg==
X-Received: by 2002:a17:90a:210b:: with SMTP id
 a11mr3313130pje.31.1587630575754; 
 Thu, 23 Apr 2020 01:29:35 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id j14sm1609197pjm.27.2020.04.23.01.29.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Apr 2020 01:29:35 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH] riscv: set max_pfn to the PFN of the last page
Date: Thu, 23 Apr 2020 16:29:25 +0800
Message-Id: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_012937_816338_D5F2575B 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The current max_pfn equals to zero. In this case, I found it caused users
cannot get some page information through /proc such as kpagecount in v5.6
kernel because of new sanity checks. The following message is displayed by
stress-ng test suite with the command "stress-ng --verbose --physpage 1 -t
1" on HiFive unleashed board.

 # stress-ng --verbose --physpage 1 -t 1
 stress-ng: debug: [109] 4 processors online, 4 processors configured
 stress-ng: info: [109] dispatching hogs: 1 physpage
 stress-ng: debug: [109] cache allocate: reducing cache level from L3 (too high) to L0
 stress-ng: debug: [109] get_cpu_cache: invalid cache_level: 0
 stress-ng: info: [109] cache allocate: using built-in defaults as no suitable cache found
 stress-ng: debug: [109] cache allocate: default cache size: 2048K
 stress-ng: debug: [109] starting stressors
 stress-ng: debug: [109] 1 stressor spawned
 stress-ng: debug: [110] stress-ng-physpage: started [110] (instance 0)
 stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd34de000 in /proc/kpagecount, errno=0 (Success)
 stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
 ...
 stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
 stress-ng: debug: [110] stress-ng-physpage: exited [110] (instance 0)
 stress-ng: debug: [109] process [110] terminated
 stress-ng: info: [109] successful run completed in 1.00s
 #

After applying this patch, the kernel can pass the test.

 # stress-ng --verbose --physpage 1 -t 1
 stress-ng: debug: [104] 4 processors online, 4 processors configured stress-ng: info: [104] dispatching hogs: 1 physpage
 stress-ng: info: [104] cache allocate: using defaults, can't determine cache details from sysfs
 stress-ng: debug: [104] cache allocate: default cache size: 2048K
 stress-ng: debug: [104] starting stressors
 stress-ng: debug: [104] 1 stressor spawned
 stress-ng: debug: [105] stress-ng-physpage: started [105] (instance 0) stress-ng: debug: [105] stress-ng-physpage: exited [105] (instance 0) stress-ng: debug: [104] process [105] terminated
 stress-ng: info: [104] successful run completed in 1.01s
 #

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/mm/init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index fab855963c73..157924baa191 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -149,7 +149,8 @@ void __init setup_bootmem(void)
 	memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
 
 	set_max_mapnr(PFN_DOWN(mem_size));
-	max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
+	max_pfn = PFN_DOWN(memblock_end_of_DRAM());
+	max_low_pfn = max_pfn;
 
 #ifdef CONFIG_BLK_DEV_INITRD
 	setup_initrd();
-- 
2.7.4


