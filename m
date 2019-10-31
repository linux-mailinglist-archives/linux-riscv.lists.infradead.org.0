Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD54EB893
	for <lists+linux-riscv@lfdr.de>; Thu, 31 Oct 2019 21:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTukInP+7OyOFniR6eeruX1mN4JgpinpCBxEqbGqF9I=; b=jZtkku/2RazB1l
	3E7N/J6WOWoJez+NZwH5da1LkmF8WAGwjxWiUYNdt9GPg2UIrJ5izLMac1dQ2fz+7w5HQQbxLlz5q
	srh2jJxT1TxUFN8r5mN5bb0hF9RWKJXwqhIrKJ3D+HwFuHnU34uS8O3XIBLK3TUt6mTCEVxN7sw9o
	PKq1+QcMjzWxefBukd6pEyBSqgAojw3HfyavgEtLMe7JF+FaltVij2IpbHAFV+3+2kKBfJqioHk/H
	RMt1dstX1L0Nb4VOCwbtxiRAuoLC01Gi5BKATjvVFocohwVuKOoGgbUbAH2SXIxv88yDE2xr5J7gB
	oKgWSCh5nRRM+Yj53ilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQHOF-0005PJ-Fk; Thu, 31 Oct 2019 20:49:55 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQHOA-0005Oe-Ua
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 20:49:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id u8so8372104iom.5
 for <linux-riscv@lists.infradead.org>; Thu, 31 Oct 2019 13:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=eZuTkF9gdxwYS0tvbddGae71Rmh5FP+LUK5dUhOI+v0=;
 b=VMqvLhOg8S4c0re6Dw2GImFmJC01f3MugeR8IlfEe6/fiiz97FrlNkmiQkKQoXFWUP
 xneZvMpjiF23urBUD+OTfkXqHs1CqzR5tZ0rMSpBeOYpjmGxNfil/7RMBgEO9PukcgC1
 PnKtRI4StJo3cYG9YcUJXsCMRkp0AxyCo4SEy5N+BK2lRiDnDlkPn0s0MnQ5iWgDHCWZ
 mauGK2FnUvcuSU3ju2pnszWXoIkX++t7XV78ikoIbirCe25Qqy9YKWzcSFXOVFI9mbgD
 /jMQ+bbthEOShvS8jtAjHuUL8G6Mp/JFqzcZZgoAJdIR/1QG5lI8BUPlT5z/BNmBu0Ee
 EmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=eZuTkF9gdxwYS0tvbddGae71Rmh5FP+LUK5dUhOI+v0=;
 b=hUk4VYM0EX3iZnPUoBEhHUWcmK92KGv1iz0n7cEAX0LXawnX8tHknDocqm1vGponAJ
 aQC6QgQaD1EEb1LjbX8CvAdCWOMdfNETLnEiW3YXgkVeFlc+wObx+21I6YbFxlCib/vZ
 GsgA0tQ6LUa5Dkmt04DbtFLizJ+y++SJCQABSGXwuqddEeLP/LX4AeeoCYlk010nFcbt
 nS8C27khYn/5p3RAGxP00bA6k9JJpuQkq0xMxJ1DfFGsEH/ZSwsf+ns6Yyq7LpdXAXmX
 quxoMGILDq0g3dD9b2pXpdJCI8pO5tXOLOb5L66eufNK7YSshinHm+nf6g9CceOOOp4O
 1qgg==
X-Gm-Message-State: APjAAAWBWCf0EJlbpVVWteQZFBAjG0MGn/CHxvF/jJEDLjmVuYhofucS
 W3iUwBXQ70dd+EFFuG3QYgf2lA==
X-Google-Smtp-Source: APXvYqxCL8rKb+KK9mH6oo8lGPy4DgHa+6+xjM+cFqcKN9RRZY5eVYNe8c9q/wCIIsbXCQOYaKcT/w==
X-Received: by 2002:a6b:f415:: with SMTP id i21mr7169015iog.109.1572554989604; 
 Thu, 31 Oct 2019 13:49:49 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id e4sm708090ilg.33.2019.10.31.13.49.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 13:49:49 -0700 (PDT)
Date: Thu, 31 Oct 2019 13:49:47 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/12] riscv: cleanup the default power off implementation
In-Reply-To: <20191028121043.22934-5-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1910311348350.25874@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-5-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_134951_048610_FD12B27B 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> Move the sbi poweroff to a separate function and file that is only
> compiled if CONFIG_SBI is set.  Provide a new default fallback
> power off that just sits in a wfi loop to save some power.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Thanks, I've split the WFI optimization out into a separate patch (below) 
and queued it for v5.5-rc1.


- Paul

From: Christoph Hellwig <hch@lst.de>
Date: Wed, 30 Oct 2019 16:11:47 -0700
Subject: [PATCH] riscv: enter WFI in default_power_off() if SBI does not
 shutdown

Provide a new default fallback power off that just sits in a wfi loop
to save some power.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Anup Patel <anup@brainfault.org>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
[paul.walmsley@sifive.com: split the WFI improvement apart from the
 nommu-related default_power_off() changes; wrote commit summary]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/reset.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
index aa56bb135ec4..485be426d9b1 100644
--- a/arch/riscv/kernel/reset.c
+++ b/arch/riscv/kernel/reset.c
@@ -10,7 +10,8 @@
 static void default_power_off(void)
 {
 	sbi_shutdown();
-	while (1);
+	while (1)
+		wait_for_interrupt();
 }
 
 void (*pm_power_off)(void) = default_power_off;
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
