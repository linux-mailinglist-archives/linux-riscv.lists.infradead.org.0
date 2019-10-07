Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCF3CE8A8
	for <lists+linux-riscv@lfdr.de>; Mon,  7 Oct 2019 18:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ESEtIcgk5j5y3Z+Iq9dyS6hh4iipTSqjI2dnqx+BlU=; b=uSygrzXrpS1sdr
	iNbvG3x133elQna+0rm6AhYGC0jMMh6i/u/9WbQGz0YejcllYqRCmxF742WKtQ1kpOKUah8Whcxyc
	TX/+2vwYgEwOVSK3QYGRPd1jQ47cA/BOKTQ1Yvodb1zJ0CXmWLXWAUJnVFkNSmqEGpGcmOZwRiSTN
	+3JmdKu1JqLqvLRL60sl5Xwmk6LRgrgwtd1n8Oz5+KnESuqsyhtADMjhLRSEyJMJeJgDZe8wI7B4q
	6zPZb4/Z4e+7YdoQuggOl/hu3SApxb5isdfFCYPXRs7mRGSJvG4uI8jAW8bFw8HOaV0Tb6kBySD73
	Pyo1r8FVbQlYjRSahmtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVYj-0005Ci-4S; Mon, 07 Oct 2019 16:08:29 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVYf-0005C5-A6
 for linux-riscv@lists.infradead.org; Mon, 07 Oct 2019 16:08:26 +0000
Received: by mail-io1-xd44.google.com with SMTP id q10so29862448iop.2
 for <linux-riscv@lists.infradead.org>; Mon, 07 Oct 2019 09:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=OYnf5Eb8n9ykt/uD7msDqCGImCXIjmz3mqehpAtin5w=;
 b=i1yGJLhiLyuMdojyTXTTab15PI1V480jrKDuDZL9zx2s46oSYkji95PIveIRZxXRvm
 JNOhyzE2x/SaKj9y0VqFm6ds+W6txWfFoYz9wBw8d9f6eo+OMEVxNl+gjjtZx++LvFOW
 ay1YMXKcJNTrjhrGkSxiqABUUzgTRSjIRsjNo2IQ89+kqwHJY4jnuCbOWXy4TQ30nrCx
 wZekK7T5a/L9b9D8dNZIYOEwEpXZgOAuzr5uQtmWYwCQfyv57dWxGD/D1WAbIPsgP3NZ
 pDemS16N8xJPf/hJUlo9oCOl8ouutkgwl2UU/YSeHP9u0VX3rVC1AXDqSyyaMnCtyd4a
 tywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=OYnf5Eb8n9ykt/uD7msDqCGImCXIjmz3mqehpAtin5w=;
 b=H0Mj1WGqAilTcQZUIko0jVV0MJDWADB/oiap6LvWIiIWi5OV3G8bxUEiytt+5hVRxn
 Q6JMwvlog1uj/FpmP/Zhyg8UM0XlWvj4A0vDB+GdmaLQQFIexPuq/fUVUE7x5w0T1hYD
 qq5Orax45sqAOOg3E2fQXUeeoMV7AZuvZkI9ar/W9Ojs/L6IjQt4AeYSuadyrtZYQbm8
 VFcUfqvASxQ/wkc9epUTBzK/8Ih7BYRnHmP+u1rqH8R2Cu+bAAzSIIT1yEHYbM5m/yyS
 3ZRHbofv9l9hEcHooEmNK7i5Ccjl5gURBAUrHKyeZuYjwA1VwXoyGPxczyHIKYMKeYBi
 wyDQ==
X-Gm-Message-State: APjAAAVGpiEuph4wOAodXY8dus60ilJVwvjsp85TKTnmawlzM2EhW6WQ
 hX4mZw+lAqAeneRNcm3caDcNS5jWR9w=
X-Google-Smtp-Source: APXvYqysgSod7rlGeElbwsjIxKd06AgfXKGvqpl8gz5zmmcjW+EOSfeoq40wCwPIGBZVOvP4zx3kAg==
X-Received: by 2002:a02:c654:: with SMTP id k20mr27301575jan.96.1570464504223; 
 Mon, 07 Oct 2019 09:08:24 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 k66sm6121262iof.25.2019.10.07.09.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:08:23 -0700 (PDT)
Date: Mon, 7 Oct 2019 09:08:23 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 4/4] riscv: remove the switch statement in do_trap_break()
In-Reply-To: <20190927224711.GI4700@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1910070906570.10936@viisi.sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-5-git-send-email-vincent.chen@sifive.com>
 <20190927224711.GI4700@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_090825_355464_E728637F 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 palmer@sifive.com, linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Vincent,

On Fri, 27 Sep 2019, Christoph Hellwig wrote:

> On Mon, Sep 23, 2019 at 08:45:17AM +0800, Vincent Chen wrote:
> > To make the code more straightforward, replacing the switch statement
> > with if statement.
> > 
> > Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>

...

> I like where this is going, but I think this can be improved further
> given that fact that report_bug has a nice stub for the
> !CONFIG_GENERIC_BUG case.
> 
> How about:
> 
> 	if (user_mode(regs))
> 		force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->sepc);
> 	else if (report_bug(regs->sepc, regs) == BUG_TRAP_TYPE_WARN)
> 		regs->sepc += get_break_insn_length(regs->sepc);
> 	else
> 		die(regs, "Kernel BUG");
> 

Christoph's suggestion looks good to me.  What do you think about this 
modification to your patch?

- Paul


From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 23 Sep 2019 08:45:17 +0800
Subject: [PATCH] riscv: remove the switch statement in do_trap_break()

To make the code more straightforward, replace the switch statement
with an if statement.

Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
[paul.walmsley@sifive.com: removed CONFIG_GENERIC_BUG tests per
 Christoph's suggestion; cleaned up patch description]
Cc: Christoph Hellwig <hch@lst.de>
Link: https://lore.kernel.org/linux-riscv/20190927224711.GI4700@infradead.org/
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/traps.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 93742df9067f..45b82be00714 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -124,24 +124,13 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
 
 asmlinkage void do_trap_break(struct pt_regs *regs)
 {
-	if (!user_mode(regs)) {
-		enum bug_trap_type type;
-
-		type = report_bug(regs->sepc, regs);
-		switch (type) {
-#ifdef CONFIG_GENERIC_BUG
-		case BUG_TRAP_TYPE_WARN:
-			regs->sepc += get_break_insn_length(regs->sepc);
-			return;
-		case BUG_TRAP_TYPE_BUG:
-#endif /* CONFIG_GENERIC_BUG */
-		default:
-			die(regs, "Kernel BUG");
-		}
-	} else {
+	if (user_mode(regs))
 		force_sig_fault(SIGTRAP, TRAP_BRKPT,
 				(void __user *)(regs->sepc));
-	}
+	else if (report_bug(regs->sepc, regs) == BUG_TRAP_TYPE_WARN)
+		regs->sepc += get_break_insn_length(regs->sepc);
+	else
+		die(regs, "Kernel BUG");
 }
 
 #ifdef CONFIG_GENERIC_BUG
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
