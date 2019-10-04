Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0811BCC2A8
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 20:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kp+2IyX1H02szP/sYDwnW9Unlm2any8w4/sRvfRMmU=; b=jR8IMGIXjxUd2y
	5dWNWsxXoZFe1eDEf4Vewj9/QAp7snM8bAl+W19m+5yiM/l1NRWaSVrFN328wXXjRXohuNeIEgDuo
	wxv47UF+aNxE6iRK4vbFtKKao6SPu71T8blZdjED1aM6UrsFSs7p+1NHtc0cDAoUgpVvxFF4Z5tMO
	OF/ud0RDztY+I4dqtPyN97rOidW5KW0qn697ryWJlHs13koEYXbg82NDLPhQKX4BrneeQ3e5yxZ7c
	Bkl63xTN/s/a+tegRfeVgvK74hQ8Cq4eInCSFdi1gGRlnxDy5Q5dvxZGldJNDJ2+m6ghywl5w//J1
	3JIL8OWYyMzHlfmPzlPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSJZ-0001sE-L0; Fri, 04 Oct 2019 18:28:29 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSJV-0001rr-Ly
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 18:28:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id h144so15565021iof.7
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 11:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Fk8zqqB0DvKX1W+/xtDSBwvEx3/VT0qa/q3V+wIeS+4=;
 b=BJQs4oC2tQPqVsTxzbgiivHy+/6Ct+K69IBnhkhd6z1mC5a/kwh5ihWtOSqVtGW2Rh
 blUYdZmYKWkDY6MGhgOrCfw57rt2fLAH18FjnBmEjb/YfqJe8NDjYYFkMkmz94/vbmuu
 hFhKvlmP2BavH2D5lmn2EspTFZJv0GlZuGVKpDLinWdiswK/OA7FEnR/ovhp2o31dD63
 Nw3OPrQ3kgfG7SMfrlfBBG4m+nir+5gWG2MtMrb2v71HF0bEjVYGxaBCguxP2eKSwxnC
 u/E1MvSzBUK6TMTjMRe8BOrdPgBJMLk3Yf5JdfX6zYg3eUV1FZ621OcySCTZt1p4+DoM
 ekNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Fk8zqqB0DvKX1W+/xtDSBwvEx3/VT0qa/q3V+wIeS+4=;
 b=j+ub1jXOTX8gJcWSIHM2poExqX54y1Ckf/LoSryK/g3Rlz1MbmwWvU/t3RG/quT7ep
 ACp0FMQy89DCrAvsQQTdp7TxXi8bkhNlpVZXE+RNgCJrPZU9RhHwSmzuIK2ntEKwuB0c
 xBI9DrT5mVfEgNmbt9+B7GKBBJzrcWpADTKKz3toeEBID0k13FtTOWfYAwQOmj786veB
 45DDeWZ6a8HHB7qvjqKrbaHJvMKdikELvjsR8vTnhUFG/66d3yuKGS0IW2AqaJ60Z8gV
 OJxlDT4UguBSOXWAjtg2V5A++wBXQBt8l3L/FgdRcZQtO/atC1oLyBz+vcOzTNyRDVPs
 v7bQ==
X-Gm-Message-State: APjAAAVHKPjrvhz+kSavn4Kp+uTCwPxy2MsOQcBoLRvBly3++0bbWqr/
 XDgGrw1WGwz08OvTFptRb0epUA==
X-Google-Smtp-Source: APXvYqy2YoyT0hpqneriwFplV402hIYoJCPRTxh9qzs3ve8YY/hj5XUj1AoPbQWVL0IPAUyYv/D8bg==
X-Received: by 2002:a92:498c:: with SMTP id k12mr16757053ilg.88.1570213705113; 
 Fri, 04 Oct 2019 11:28:25 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id d18sm3912869ild.63.2019.10.04.11.28.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:28:24 -0700 (PDT)
Date: Fri, 4 Oct 2019 11:28:23 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 3/4] riscv: Correct the handling of unexpected ebreak in
 do_trap_break()
In-Reply-To: <1569199517-5884-4-git-send-email-vincent.chen@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910041126420.15827@viisi.sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-4-git-send-email-vincent.chen@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_112825_732999_12D00729 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019, Vincent Chen wrote:

> For the kernel space, all ebreak instructions are determined at compile
> time because the kernel space debugging module is currently unsupported.
> Hence, it should be treated as a bug if an ebreak instruction which does
> not belong to BUG_TRAP_TYPE_WARN or BUG_TRAP_TYPE_BUG is executed in
> kernel space. For the userspace, debugging module or user problem may
> intentionally insert an ebreak instruction to trigger a SIGTRAP signal.
> To approach the above two situations, the do_trap_break() will direct
> the BUG_TRAP_TYPE_NONE ebreak exception issued in kernel space to die()
> and will send a SIGTRAP to the trapped process only when the ebreak is
> in userspace.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>

Thanks, queued the following for v5.4-rc.


- Paul

From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 23 Sep 2019 08:45:16 +0800
Subject: [PATCH] riscv: Correct the handling of unexpected ebreak in
 do_trap_break()

For the kernel space, all ebreak instructions are determined at compile
time because the kernel space debugging module is currently unsupported.
Hence, it should be treated as a bug if an ebreak instruction which does
not belong to BUG_TRAP_TYPE_WARN or BUG_TRAP_TYPE_BUG is executed in
kernel space. For the userspace, debugging module or user problem may
intentionally insert an ebreak instruction to trigger a SIGTRAP signal.
To approach the above two situations, the do_trap_break() will direct
the BUG_TRAP_TYPE_NONE ebreak exception issued in kernel space to die()
and will send a SIGTRAP to the trapped process only when the ebreak is
in userspace.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
[paul.walmsley@sifive.com: fixed checkpatch issue]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/traps.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 82f42a55451e..93742df9067f 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -130,8 +130,6 @@ asmlinkage void do_trap_break(struct pt_regs *regs)
 		type = report_bug(regs->sepc, regs);
 		switch (type) {
 #ifdef CONFIG_GENERIC_BUG
-		case BUG_TRAP_TYPE_NONE:
-			break;
 		case BUG_TRAP_TYPE_WARN:
 			regs->sepc += get_break_insn_length(regs->sepc);
 			return;
@@ -140,8 +138,10 @@ asmlinkage void do_trap_break(struct pt_regs *regs)
 		default:
 			die(regs, "Kernel BUG");
 		}
+	} else {
+		force_sig_fault(SIGTRAP, TRAP_BRKPT,
+				(void __user *)(regs->sepc));
 	}
-	force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)(regs->sepc));
 }
 
 #ifdef CONFIG_GENERIC_BUG
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
