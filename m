Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A901B97E0
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 08:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sq2wT2SFz3pYBy4+J5vMJ7XXvctBcG1IxWJshVIua6Q=; b=W0dPCp5Px/xeW9mo99zGlbd7O7
	KPhUv7xuvg0jRn6vJ7ek25f6zSvvoSpvQt2puINc7G/cEjbQeItnyfIIfsuccY+MPKkKJsqPrsrLz
	8qYZoRroogDo4lg0S+BRDGCjS41Yt27pT8a3lBxz9Ka3TArtUnwE9GsgXiQJg3HSLFjkwhIugkUuO
	HtwvWRshprgXC37No2WXAcjBV/hGCSFSxc1aC1FaQ/aL4h8wB7oHu5GAVipd0WdEfzcG9hb7xLiAa
	4QIu6Bf3AgQVvRB5Fmff/IA8JzOPFevR6Py+ClNqYLKbpMo3jcw+y+fCXtaFxtDM2Yb+o5FwiV0Dh
	v74dwlaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxjq-0000Hm-UX; Mon, 27 Apr 2020 06:59:34 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxjl-0000E1-3z
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 06:59:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id k18so6641270pll.6
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 23:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Sq2wT2SFz3pYBy4+J5vMJ7XXvctBcG1IxWJshVIua6Q=;
 b=ab7k3NG46suCxET8F01kdzOzWHGD65fFSUPegXgEFsaHjgSn5k2TbD6QAumAjKuSDj
 emsmDBoUGQx5xfZ/etovDtYdBSePjlyJW9x9cwQOXG+/TpOteXT+CQMLKbf4soJAZYzn
 4UxjYPL0k045JkXzIMRNY7MNhsrw08G91ynuiGYLGxSOfy2Y/xcmJFvCRI7FbsnrvKnw
 1I+3AFgRm94TvDn7OWuENqoNi2cPXfJNGU2LoyUo4quaCnFNFLZkKnozS+s6htA3yw3t
 Djf6yGG5n2jiEOkBM5xP6c8CsNk0N0+Bak/stiJUxNdWtRMxbG/7LK79e3uXagbj5trC
 hnSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Sq2wT2SFz3pYBy4+J5vMJ7XXvctBcG1IxWJshVIua6Q=;
 b=Bf2uCI4R65ZDTrVbXx6ZWZQKhbW0U/J36fsZ3nB6Iu1KGmVQpGpbL1UZ284WgY0eiI
 OsZie3R5qU3K0MQSV5Y0nr2eYWu+JKQEHYu65EoyLkFLXG3oGifyjSJsiMQWqg7NOPgs
 lY94XM2pX9f7UIRryuUGDb4mCFHzYpP7PlaUPr0jZt11k1U7s3SExSoKEQiy4FInppr5
 r+WFSmh8QQDcVQK1ciwyCwHtGUOYkOfa9pUGls1LmjxOk0lNDhzU5AXpaggGBh0UliGL
 er79rEhtJot6OCuDUsqn/+e+VY+jSIkkzA2WQJ1peQxIVYaJWm1AsK8HAaL4aAFqYVbB
 K8Rg==
X-Gm-Message-State: AGi0PuZHf5Zm+/57raqEjqg6L0FvJyKsJfGW/ivagvBFyZjdt76Q9y0R
 Hv7Mvnh7UckwaO8mDpKBjUZlfezNaXU=
X-Google-Smtp-Source: APiQypJvhkTSISccdZ6P3eYi4EPU7GzAmyZm7mkfmmwhCAS6iHT+zJ2NfajrZcy1Ctz04qUSZgpubA==
X-Received: by 2002:a17:902:164:: with SMTP id
 91mr11664335plb.207.1587970768283; 
 Sun, 26 Apr 2020 23:59:28 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id g40sm10442139pje.38.2020.04.26.23.59.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Apr 2020 23:59:27 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v3] riscv: set max_pfn to the PFN of the last page
Date: Mon, 27 Apr 2020 14:59:24 +0800
Message-Id: <1587970764-4393-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_235929_357110_0DE12BE4 
X-CRM114-Status: GOOD (  10.16  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 stable@vger.kernel.org
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

Fixes: 0651c263c8e3 (RISC-V: Move setup_bootmem() to mm/init.c)
Cc: stable@vger.kernel.org

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Yash Shah <yash.shah@sifive.com>
Tested-by: Yash Shah <yash.shah@sifive.com>

Changes since v1:
1. Add Fixes line and Cc stable kernel
Changes since v2:
1. Fix typo in Anup email address
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


