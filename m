Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB951B974A
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 08:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rvwOMHyXDNyImD45ns9UEbHv3lzL0MdhHR3ZheOkyjk=; b=hssrFXzBpn6v/nuOSQLxe61Tew
	AcHRAHl5QBVbB6vLxs7kPjMgiqxkDyQZ5eCycXP1vJmgEc7XLnF33MWSel07Fw6lXjywViNR/yp1a
	MfbYla6bGEjdgtEYPxfojwNpnsylUhPqZmv4QjQhn9edPpfiPMsx9nADK8x0fJyn5g6Ctsc+HAJor
	1nfJxP6QEgOmDXGTUkPiZHCCXDaDbBi0M0PLsGAIv7u/3DpqLDITIvW//h+FnAGPdk1K5zxfERsLi
	/8v+yvYYZ0vsUnQ1Wi3wxGjlGplffiPkIFttKb2m50Cg0ha/kYlnBq8/05QeHB/A4R6rlAvogRN8C
	zeYlbPKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSx6y-0005Jk-NN; Mon, 27 Apr 2020 06:19:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSx6q-0005Gt-Ef
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 06:19:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id x2so4777824pfx.7
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 23:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=rvwOMHyXDNyImD45ns9UEbHv3lzL0MdhHR3ZheOkyjk=;
 b=PhE2X16hFZl7dA8VvsBnxP1uZ0UyNDlbZ6CJsx4AlTU5hrnHgXpO91ijdKvtCyOjnw
 FoC4CKm7TGdFQbKw0D5kGyS51XmHFYM7TWaIgz8alxW9qgc59U1+6vyw1lx42229ZJJn
 z3hqmc6kXpr+pUhmdvahYyCmo8v6TpDE+55gTR684o7TndPAvoIYMG09sheeyxei8byG
 YvDh13ZDU/vjuYyvodgvb16l1fOu9cNt8W6V/CyfmhfPQa2l93RV6zEhlFGZd4LOWtiT
 75944L8bCuqTfQEd04Ln2M7qeZD+c01yK4ZtiEBzJVzkcxwfi/NhdBj+tsUnO/3FQATp
 BAmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rvwOMHyXDNyImD45ns9UEbHv3lzL0MdhHR3ZheOkyjk=;
 b=WYjj/X86SHD7LuCDIwlpPm1E1ywnXB3/IcqIarXCUDbeM0c8GJH9RXqa3G6NcXKgvy
 lQOvVL13J9kL/YZwxUsThArajwBFSA3RiiD0fsdijms8dLYVXaoTLkRNXkHy33EE0K/W
 4/ZRk/s2z73dhMNxoiRdRw15K8/njWjH9XgqEhraJ/mcJoInsyp/vRBZgK7M0RQxL8MB
 CsHDDoo4xiK/JTXG213YenYon6Y/fNG6U25NDUfPDjx44moBekjbd85yScrPeMTsAeZP
 Ab8SCXLMxWlBGBUFLESjOjT2qdNpP4rg+zAFt4HsPpRM9Vi0EBZoUPLbvZHsX9/aRvla
 cF3g==
X-Gm-Message-State: AGi0PuY6QPxPMnBhFzq+pghCAqOUgYXKQz51dKPY5AKJYITe/BFG+BlW
 UI4uwIrE7Bht+6vUUnc9F+IyZQ==
X-Google-Smtp-Source: APiQypLWdVIMX05zEFe7fzI3CwEBd5MJ5syuCYCeK1133zCeIWMiUiTUrAFRbLvCCurzvbLt881Xng==
X-Received: by 2002:aa7:943c:: with SMTP id y28mr22599617pfo.171.1587968355594; 
 Sun, 26 Apr 2020 23:19:15 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id y186sm11256676pfy.66.2020.04.26.23.19.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Apr 2020 23:19:15 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v2] riscv: set max_pfn to the PFN of the last page
Date: Mon, 27 Apr 2020 14:19:11 +0800
Message-Id: <1587968351-9507-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_231917_740237_F51E96B4 
X-CRM114-Status: UNSURE (   9.98  )
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
Reviewed-by: Anup Patel <anup@brainfault.ort>
Reviewed-by: Yash Shah <yash.shah@sifive.com>
Tested-by: Yash Shah <yash.shah@sifive.com>

Changes since v1:
1. Add Fixes line and Cc stable kernel
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


