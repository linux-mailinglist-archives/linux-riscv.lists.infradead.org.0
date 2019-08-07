Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDA584293
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 04:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzfNtUc0mmL2O5d0Po66j61Xq6dyaLktp4WBJdTftEI=; b=GL0woff6EOGLox
	nroC64K8LwosA6nLqSiYkgtv8ju2HSPBYe/ZKB1PGAvKhpljgrq7EdU6eH3uQPExGuWpP0vReOTHM
	EhSoGf+wkHjkaQYzux3HFolTUmQRpzw7I2stX/CTTeMAIXnBrhpl7luLj+9lfBxqY1MNP7F0xVDtE
	ILZt2PFd/fIrpxOVZXj7Me6yvYHTcL3EKDSy5lR9qUGfndGOitkSAdTrU6TZ+FiRKnaqN9RgJlvrL
	U9Z8W3a4d3ZobRNgyppnn7mEmua+hj7KbBLSZIGAvuLDGjDsil9loZKTJlItHxrVGpUh+Y/I2c6cQ
	tN2uLdYieLkHHcJduLaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvBsO-0004LQ-G5; Wed, 07 Aug 2019 02:40:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvBsL-0004Kx-LD
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 02:40:31 +0000
Received: by mail-ot1-x344.google.com with SMTP id j19so21694095otq.2
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 19:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=iI/iXUmfEkQSyq4AtQNQzdpL0txh4zeQs+r3TsZsnbM=;
 b=RXnGW4yJICiNedzv7C1pEQFd8BHqwA3T9B5lVxO60Ger81MYLyuA2EyATKteG/T5p5
 sfHrNSFPY4hfASFC5RsV4l4adfcyg6UhchDK8gaJeIf9JQvjVAVUs/2oYl1wXDjrv5rx
 WCYwxW1VUS5Mb5leHph7h1pZ5tIX8XrwZd/RqUbHQPeF5YJJPiqyXPo7c4yKzAtmTw1m
 TQDW+krt/3yQfHlj3958wL5Fi1uu1wnQgsAyYk3P6wwAQzfDfJ6VhnA16d4iKx9VJaNW
 OT72Sp7awyzWF1fUfRVT4d5qPLFbpZPiAgARJNceUz3+X/reuJAsoGnV4m+8S2mQ4YDb
 rBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=iI/iXUmfEkQSyq4AtQNQzdpL0txh4zeQs+r3TsZsnbM=;
 b=t2MSoZQFyU/wZa1EXG45KqPMhA6mZrfqPrBfN/IJR6NFOT1KPMY/hm3LczfvOfIqRv
 W373ggVOuw9Cg0oeIcikYGx3V7JhabHtL9n/g5NGGvD2dDXwA/lBOC66lnesgP2MxtTH
 EIrU/dOn3DidvMllNr4/Ye24OUg3EdZhl1LeDMq3pgM/FtBTit9z07JlnrwTmMRoRIsN
 1RjBuE5gVEd/vBCAHR1EJbnWecWXZfhoPPjhKBU68Fi0InwaA3c644YbNf5OmHDhPga2
 xCsJGi/2kUbd7VWbIWQKyixue/bSVQ1jSQspJGAmPwnHLlg9euqbDv7jvQMl0QgXT30k
 xu2Q==
X-Gm-Message-State: APjAAAUUSKH57fPwdMjQ3Ko2cEiIVQr4M7quuP2lTPh4v/W65Ma8wRwg
 BEKRGdK/ZJmZ2+Bemq4fl4PAWA==
X-Google-Smtp-Source: APXvYqwXhS7UuwQcYeMkwcfT6rmQHbUmCtdyfES+jI9ghn4BGrkN/O8/H89s/z6tFxlOXdiHc8VVMw==
X-Received: by 2002:a5d:885a:: with SMTP id t26mr6542150ios.218.1565145628416; 
 Tue, 06 Aug 2019 19:40:28 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 x22sm63417021ioh.87.2019.08.06.19.40.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 19:40:28 -0700 (PDT)
Date: Tue, 6 Aug 2019 19:40:27 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [PATCH] RISC-V: Remove udivdi3
In-Reply-To: <nycvar.YSQ.7.76.1908062230570.19480@knanqh.ubzr>
Message-ID: <alpine.DEB.2.21.9999.1908061936300.25231@viisi.sifive.com>
References: <20190807000508.9477-1-palmer@sifive.com>
 <20190807001846.GA21655@andestech.com>
 <alpine.DEB.2.21.9999.1908061738130.13971@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908061907340.25231@viisi.sifive.com>
 <nycvar.YSQ.7.76.1908062230570.19480@knanqh.ubzr>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_194029_754253_EEDE9BE7 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Alan Kao <alankao@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019, Nicolas Pitre wrote:

> On Tue, 6 Aug 2019, Paul Walmsley wrote:
> 
> > This patch breaks the rv32_defconfig build, since udelay() still relies on 
> > __udivdi3().  I'll queue "riscv: delay: use do_div() instead of 
> > __udivdi3()" along with it: 
> > 
> > https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1908061906240.25231@viisi.sifive.com/T/#u
> 
> > +       u64 n;
> > +       u32 rem;
> > 
> >         if (unlikely(usecs > MAX_UDELAY_US)) {
> > -               __delay((u64)usecs * riscv_timebase / 1000000ULL);
> > +               n = (u64)usecs * riscv_timebase;
> > +               rem = do_div(n, 1000000);
> 
> You may omit rem and ignore the return value here.

Thanks Nico.  Updated patch below


- Paul

From: Paul Walmsley <paul.walmsley@sifive.com>
Date: Tue, 6 Aug 2019 18:28:33 -0700
Subject: [PATCH] riscv: delay: use do_div() instead of __udivdi3()

In preparation for removing __udivdi3() from the RISC-V
architecture-specific files, convert its one user to use do_div().
This avoids breaking the RV32 build after __udivdi3() is removed.

This second version removes the assignment of the remainder to an
unused temporary variable.  Thanks to Nicolas Pitre <nico@fluxnic.net>
for the suggestion.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Nicolas Pitre <nico@fluxnic.net>
---
 arch/riscv/lib/delay.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/lib/delay.c b/arch/riscv/lib/delay.c
index 87ff89e88f2c..f51c9a03bca1 100644
--- a/arch/riscv/lib/delay.c
+++ b/arch/riscv/lib/delay.c
@@ -81,9 +81,13 @@ EXPORT_SYMBOL(__delay);
 void udelay(unsigned long usecs)
 {
 	u64 ucycles = (u64)usecs * lpj_fine * UDELAY_MULT;
+	u64 n;
 
 	if (unlikely(usecs > MAX_UDELAY_US)) {
-		__delay((u64)usecs * riscv_timebase / 1000000ULL);
+		n = (u64)usecs * riscv_timebase;
+		do_div(n, 1000000);
+
+		__delay(n);
 		return;
 	}
 
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
