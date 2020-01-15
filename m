Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC7213BA15
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Jan 2020 08:05:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pheYEBYXRUydN40/wbI1ZvK+bBwX3RUetQibpSJmnJY=; b=KEvppvLJsHuSjZiTy7qSSOy/cC
	axmASvthrzIoYqhWxB7AsOTwOT+8oKYB2oleSeljfLE+XCW3bXPbhP85hmRCmNNPWtdTjMwx7+nj4
	Z977G6pXWqesSs6r+MSSs70G4UyjCrGu7JfKFUsxXP+r4MPEvlIgQqTFR4kCoVDGSeJlQElisDDbA
	swDezXlwthYXO5Id7UL53V7QluxpG6XfiTHfOd42X+92BSp0PifwVEUH6k6Ko3guadROSUNQLniat
	KdXBeRa+4R4k0/B1pxRiyyqJTcqByfHhWvEIimVDPqsUrvy8a+rbdrKCYxi0WHFbBYC1+puSe8nHQ
	n+U5dqng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irckK-0003dt-W2; Wed, 15 Jan 2020 07:05:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irckE-0003cK-UG
 for linux-riscv@lists.infradead.org; Wed, 15 Jan 2020 07:05:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so7763314pgk.2
 for <linux-riscv@lists.infradead.org>; Tue, 14 Jan 2020 23:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pheYEBYXRUydN40/wbI1ZvK+bBwX3RUetQibpSJmnJY=;
 b=NvUYpJrRAEoLYVNWDLCyIXnqBtZhu5T9juwnWlnFdYlwfcQphlEPKzzircApS3ZF7B
 9b9OmmpCr4epEqhH1CboKmQk+p4BrJPEpmeM7FmdagTbPka3w94DHbv+VO+zxsOGzmaK
 OMH3E8BaI0WET4G/4ilVhXU1z7AP3936MaP2rhruDZpKMTctBJenJU3FZAXtEQFpJjaU
 EB/e2yjsxHhCJiKxYsGiOp4mG9+w0dhPih1uUFcfvx0dbN/FJe4bysTIlCwH4MkjINgC
 rAtCnkzRvAZw0PewWyeRegxwzI0sgSPtJ3HbFO9xXCZxC3x3jiX5dXO7mJQAeCblPuc4
 /YVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pheYEBYXRUydN40/wbI1ZvK+bBwX3RUetQibpSJmnJY=;
 b=P/eWx7LRs8aMbVy8qCHtPMco1fy6lvE7hRVkY8fDBFouZp6igjDj4Fq1oJ7vZmSymI
 QOyV0qIFDbPVhr9Be4EPG1BNxeEyyKcu2Dnb/+tl4f/hQEuxsTjBUWjhAAeL21McFCN+
 bt6WRWt/47w6MJAY+KV9C05hL7bhfVuY3eayUCIXEHKTV3QB7ghvnTzaAoDk/Cs8+v2Y
 9s1wZGQPp3833RmMjsUBGwKlxWcBhV7o3zst+gK9GQ9Ry81M9/9IYGsH59N5JKxg1wy3
 ygbxq/pmxQdsm4i/bs1ALnTLctWKutp+nj8CYfL2k+0myYCqBgN3Z4zwNLywlzHGyWJR
 mb1A==
X-Gm-Message-State: APjAAAXDLu/w0RJTCrq5Oy1fED0SrDjyCut/5fwkv5GeqP+HB7d5t/WJ
 t/3bBU3un61P8LTjmVV+d7+tyg==
X-Google-Smtp-Source: APXvYqzVGND6xq6LG8bdDE07pm1yXFpJeW17HC9m0rxajMfZLCEWDJc0iFO258V6fVljx91mfxMv/A==
X-Received: by 2002:a65:4d46:: with SMTP id j6mr32352377pgt.63.1579071937402; 
 Tue, 14 Jan 2020 23:05:37 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id a2sm19196023pgv.64.2020.01.14.23.05.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 23:05:36 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: green.hu@gmail.com, greentime@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, schwab@suse.de, anup@brainfault.org
Subject: [PATCH v4] riscv: make sure the cores stay looping in .Lsecondary_park
Date: Wed, 15 Jan 2020 14:54:36 +0800
Message-Id: <20200115065436.7702-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_230539_187881_725F2AAF 
X-CRM114-Status: UNSURE (   7.75  )
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The code in secondary_park is currently placed in the .init section. The
kernel reclaims and clears this code when it finishes booting. That
causes the cores parked in it to go to somewhere unpredictable, so we
move this function out of init to make sure the cores stay looping there.

The instruction bgeu a0, t0, .Lsecondary_park may have "a relocation
truncated to fit" issue during linking time. It is because that sections
are too far to jump. Let's use tail to jump to the .Lsecondary_park.

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/kernel/head.S | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index f8f996916c5b..d7820764122c 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -88,7 +88,9 @@ _start_kernel:
 
 #ifdef CONFIG_SMP
 	li t0, CONFIG_NR_CPUS
-	bgeu a0, t0, .Lsecondary_park
+	blt a0, t0, .Lgood_cores
+	tail .Lsecondary_park
+.Lgood_cores:
 #endif
 
 	/* Pick one hart to run the main boot sequence */
@@ -217,11 +219,6 @@ relocate:
 	tail smp_callin
 #endif
 
-.align 2
-.Lsecondary_park:
-	/* We lack SMP support or have too many harts, so park this hart */
-	wfi
-	j .Lsecondary_park
 END(_start)
 
 #ifdef CONFIG_RISCV_M_MODE
@@ -303,6 +300,13 @@ ENTRY(reset_regs)
 END(reset_regs)
 #endif /* CONFIG_RISCV_M_MODE */
 
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


