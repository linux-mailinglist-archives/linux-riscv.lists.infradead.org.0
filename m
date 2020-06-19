Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E46D201423
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 18:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WnWhn2O9ddpmgT5q7yGLFrwE17K5+WMrtUB+3cLWEw=; b=JZOKsn/8KPOmWm
	1p5GRqvy7tECpo0T2OHw5529HyefFiWwgHYQ4+mllP8PpJMlPlYEUoL72M3ciiKdBZiyDOIazEwo1
	n0d4m6R+FA7qM4aKSsgQxlGg+mw1R77G+XNqBVNZNQakDL8ryaQnsoiY+mlVEinxxOoFHN2BShFXU
	zqpTU9GOHGHzwuRFwzBzlfEKzfM+r5RKisBE3qmqNE8V8qfmGJ+TnZY3VN8Uix15VgCyOcc/Ao3hX
	69g4O/wAlvYR116TOhANha+SeaFgMEvnJHDD6FzYqJQP9iA9MTXCTEX5p3FpLlnrPQE/KLy/wFXy7
	RuZaMA16z5YgJymcCTJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJe9-0003Uy-VK; Fri, 19 Jun 2020 16:13:41 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJe6-0003Tc-Dn
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 16:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592583216;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8WnWhn2O9ddpmgT5q7yGLFrwE17K5+WMrtUB+3cLWEw=;
 b=ZWL+SVq/R3SO9t7tT3WowbmmOFA/Tzixwt0G/p1+srUVrJ0nitrcC0KNjnupY9XBh1OGuo
 LyYRs7rekDKO+k3yZCnshxJlOmdsR8fxD51c67jwRdPLTh/gyznk2OpQkO7bDerjpWUsYw
 Qe8QZ69tPnz9Er4hFv9Cchll27K+5Fo=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-485-TqzC3lvSO4W8YMHbZdGzIg-1; Fri, 19 Jun 2020 12:13:35 -0400
X-MC-Unique: TqzC3lvSO4W8YMHbZdGzIg-1
Received: by mail-qv1-f71.google.com with SMTP id a4so7071988qvl.18
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jun 2020 09:13:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8WnWhn2O9ddpmgT5q7yGLFrwE17K5+WMrtUB+3cLWEw=;
 b=lC3lXP/C3QhDBbGYxJSskr8d7ijUVC/oLwT4n3j2Yuxq/GYR1ve3aSkexVHca/RUYE
 gzvuN6oYFy2YqGxsh2+xcgungb8N+3ZEv3h8DD+CKP6o467VuygZ9oazC13Kr1CLfKdG
 OPyehz8HpNO4Z2opvrN6FrqzSolANYv2aUYt/0x6FTM6TBFKHYDWFbzoz4d1CPEaqEj3
 uGZuQHRAfOCIRzo17ljAlUIOV4kuywO5nQtSeZoEzzcqpeVZytnrlveARNtk4178fSpC
 Iw9XYdKBOBngSorYEvy9gi6/HRzN2rFSDPPKOeyRxWffDAnAO+5AoOUd/+T0yhjwIc8I
 aVAg==
X-Gm-Message-State: AOAM531TyRIHMs8HhzfIzTc1F7/j6lnVaNuJEDCUOjhHIBZyvci7SUhJ
 FWCi3tJ+szbzTeh1LvaKL4EqSKHGfBlupnhA+TLEZfPN4iUSRZluZlJr7+lIx9qk9zDZ9fKXqWE
 aUYhXnKls71pVYNtz7DgOjNsTtYMN
X-Received: by 2002:ae9:ef4d:: with SMTP id d74mr4214777qkg.41.1592583214605; 
 Fri, 19 Jun 2020 09:13:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXGpbO/9nv4BANBmX+guvWqX+FL56EmA0NXR+BJXb0IgqFlArSWQFas9dDfa1ga+CYTZhslw==
X-Received: by 2002:ae9:ef4d:: with SMTP id d74mr4214756qkg.41.1592583214399; 
 Fri, 19 Jun 2020 09:13:34 -0700 (PDT)
Received: from xz-x1.redhat.com ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id x11sm6338488qti.60.2020.06.19.09.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 09:13:33 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-mm@kvack.org
Subject: [PATCH 17/26] mm/riscv: Use general page fault accounting
Date: Fri, 19 Jun 2020 12:13:31 -0400
Message-Id: <20200619161332.9614-1-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200619160538.8641-1-peterx@redhat.com>
References: <20200619160538.8641-1-peterx@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_091338_547274_A379C0C6 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
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
 Michael Ellerman <mpe@ellerman.id.au>, Peter Xu <peterx@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-riscv@lists.infradead.org, Gerald Schaefer <gerald.schaefer@de.ibm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use the general page fault accounting by passing regs into handle_mm_fault().
It naturally solve the issue of multiple page fault accounting when page fault
retry happened.

CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: Albert Ou <aou@eecs.berkeley.edu>
CC: linux-riscv@lists.infradead.org
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 arch/riscv/mm/fault.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 677ee1bb11ac..e796ba02b572 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -110,7 +110,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 	 * make sure we exit gracefully rather than endlessly redo
 	 * the fault.
 	 */
-	fault = handle_mm_fault(vma, addr, flags, NULL);
+	fault = handle_mm_fault(vma, addr, flags, regs);
 
 	/*
 	 * If we need to retry but a fatal signal is pending, handle the
@@ -128,21 +128,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
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
 
-- 
2.26.2


