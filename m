Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2C81FA358
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 00:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36ZF/biwj/VA+UsNPBUNfyG0Dq51HOZlNRabEgtvraE=; b=WNIzWx06IhJbs4
	gPLIhENHfgmoOZI9zH9cgGnsRJjE+CZsyr0TuTj63YQOmWP/zBY0xsUho36FsAKMrsY2K1vBDYXdJ
	9l2ULiCX/CnFbGLxpfp44OavNSPhvH1ZMAQViRzhqFPk/Yv6fbucamb+CNhb1NzO2vfvG6DEuCiAQ
	uxfc7LmXQR9/7XZN6/i2rO/yCB/VG/b5C4kbmmM5LQftST5hFA5RDTMHNEXTcU2lzxrf5G+o3bxGA
	X4yhaAsw/FZSOFpFsS7DHzxMtqWf0ERKyAlc1LXwK4qhfi5ClVvO2qHJidyDNPOoCdWfD5qF62/dm
	FEUc7UDOY+f0WIPqpBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkxPY-0000O9-J7; Mon, 15 Jun 2020 22:17:00 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkxPI-0000EK-RP
 for linux-riscv@lists.infradead.org; Mon, 15 Jun 2020 22:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592259403;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=36ZF/biwj/VA+UsNPBUNfyG0Dq51HOZlNRabEgtvraE=;
 b=btjX4VJceSa/SSQ2a7C0iaJctIqLn46Qu26+5EQIEYwgHSI6ULcGdWXyOZbiN8raYo2FNz
 Cm5ern0LQHPpzvIMvuS/p1bor7U0RgFyYCQ6umhZJMXFBNah62J5IN2tsDWuzy9G91wn6v
 XlAkbN12/e0dnNf6A8lNpfM1jVrqsgo=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-YTOIWvkbMuuT5AaGShUYzw-1; Mon, 15 Jun 2020 18:16:41 -0400
X-MC-Unique: YTOIWvkbMuuT5AaGShUYzw-1
Received: by mail-qk1-f200.google.com with SMTP id a6so15398416qka.9
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jun 2020 15:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=36ZF/biwj/VA+UsNPBUNfyG0Dq51HOZlNRabEgtvraE=;
 b=pBqwirWfq171BPfbjCUynUaI3iLGyhQ8W/tgMpMy7IscCcCn24WRyFtulcCDYA0naU
 VjVWDCj4LzLKCL/k77XpWwKkvVphidKy99TUGas4pcRU2OGkI3FiRMtpoublYkta3HO2
 X4I/ZkIZkLb1MioqPb0twWfx39yumT9I3ZGgfHhYHSfIEOmV1t6aVkIaBg4FU9A5D+Uh
 ywxLqCZUqabGkBPUsoANeU4tVxzlf/vWbzqr1LqYpaz/o1paVPnE0whun1BzLUDkF8+P
 loIKBpXAVzKhMAXZpKCXHzYPwjys1FyoTEAa2rI/+rXhkFrv2+4RZdvL+CuJLW3XwIQ0
 Mplw==
X-Gm-Message-State: AOAM530pTKH3OPNVdwKUFPFFnDqgFylvZvJ80hX0J4lOlUmRS1N47056
 RVDwRFjWYVGBdh8a0/Hy2LuiF7PcAaq9Omhb48aXfTGP8VR0s5IA+AWgQyA6I3aIsi6Kyqr+HQT
 p+bSx1yaQ3XKW+XqaHjxCI58hIeZi
X-Received: by 2002:a37:a0d0:: with SMTP id
 j199mr16970952qke.300.1592259400690; 
 Mon, 15 Jun 2020 15:16:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9KGEANrrpBThsrhroFN+hSsX9BivaeMbkhMP7hiObGEAGG+ZmPX4mroIaSO0uiyEEJzhS4Q==
X-Received: by 2002:a37:a0d0:: with SMTP id
 j199mr16970930qke.300.1592259400461; 
 Mon, 15 Jun 2020 15:16:40 -0700 (PDT)
Received: from xz-x1.hitronhub.home ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id w13sm12351509qkb.91.2020.06.15.15.16.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 15:16:39 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 18/25] mm/riscv: Use mm_fault_accounting()
Date: Mon, 15 Jun 2020 18:16:00 -0400
Message-Id: <20200615221607.7764-19-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200615221607.7764-1-peterx@redhat.com>
References: <20200615221607.7764-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_151644_968879_DFDBF3D3 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrea Arcangeli <aarcange@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 peterx@redhat.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-riscv@lists.infradead.org, Gerald Schaefer <gerald.schaefer@de.ibm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use the new mm_fault_accounting() helper for page fault accounting.

Avoid doing page fault accounting multiple times if the page fault is retried.

CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: Albert Ou <aou@eecs.berkeley.edu>
CC: linux-riscv@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/riscv/mm/fault.c | 21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index be84e32adc4c..9262338614d1 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -30,7 +30,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 	struct vm_area_struct *vma;
 	struct mm_struct *mm;
 	unsigned long addr, cause;
-	unsigned int flags = FAULT_FLAG_DEFAULT;
+	unsigned int flags = FAULT_FLAG_DEFAULT, major = 0;
 	int code = SEGV_MAPERR;
 	vm_fault_t fault;
 
@@ -65,9 +65,6 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 
 	if (user_mode(regs))
 		flags |= FAULT_FLAG_USER;
-
-	perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);
-
 retry:
 	down_read(&mm->mmap_sem);
 	vma = find_vma(mm, addr);
@@ -111,6 +108,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 	 * the fault.
 	 */
 	fault = handle_mm_fault(vma, addr, flags);
+	major |= fault & VM_FAULT_MAJOR;
 
 	/*
 	 * If we need to retry but a fatal signal is pending, handle the
@@ -128,21 +126,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 		BUG();
 	}
 
-	/*
-	 * Major/minor page fault accounting is only done on the
-	 * initial attempt. If we go through a retry, it is extremely
-	 * likely that the page will be found in page cache at that point.
-	 */
 	if (flags & FAULT_FLAG_ALLOW_RETRY) {
-		if (fault & VM_FAULT_MAJOR) {
-			tsk->maj_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ,
-				      1, regs, addr);
-		} else {
-			tsk->min_flt++;
-			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN,
-				      1, regs, addr);
-		}
 		if (fault & VM_FAULT_RETRY) {
 			flags |= FAULT_FLAG_TRIED;
 
@@ -156,6 +140,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 	}
 
 	up_read(&mm->mmap_sem);
+	mm_fault_accounting(tsk, regs, addr, major);
 	return;
 
 	/*
-- 
2.26.2


