Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363588C29F
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 23:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsUWk1V4U6yxpw0BfdSGPz3+jAbyz+xdy0ZP9TmVBl0=; b=goPTB9vW8v1Op7
	tX4BPysKRwfzKIO4HUi9CLcCYMqB71kEqeZ+/smBocycz/M3D8ZmxYhWI0ItYffNhKNipbgN0iNdS
	O0vPNR0PnYdgionDtv4YYFolQ+i5LooQiEn437D+q4KKTjiDLoGlnWdnfu+DFnqPvZt9o8Kzisdis
	U4pHtCxGMPEbhcfOjUNb/Pxhc7pjECEdmFC9AXU1sSjI3LJp3VfcQr/6i4trw5DhCHz6f+giCzNx6
	nVkiqiLMKLDoaMjRu9ghPHYDN3hTtncAZ+0Gm8VMqmOY6eCcEghHHCX1SLK1oOnWZGy7Cqg6edA6u
	LuidWGalWKSRONWoX3gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxdx1-0006iO-BP; Tue, 13 Aug 2019 21:03:27 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxdwx-0006gf-UZ
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 21:03:25 +0000
Received: by mail-ot1-x343.google.com with SMTP id c7so4785687otp.1
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 14:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=q/tq0J9ADbe9GkNWVaHD9QAS+rJhqu7CATlDgV//5SE=;
 b=fXtPZ3S0p6tfagYECMpB+kExsFKebrXX3vbg2qNrvpveYDkZEq+CyuHOTXhrGP1ayF
 8V9f90Gp8IMPmiPDan+vxWIc+J2pSHwbnK6L9w16U7sQ+hOFVNsStsfXvM4C7rEKv9bo
 R/tmhgsaAOrMT+88oASxBgCR13rDlRbjkU4BIwN77kbLic0fRK9jd1vvMxOM6jDCDrdf
 QpMfyFqBQy6xHIEzuVllZWBRLh+E+fM9+oRiNUSkUgwllTCCXBgH4u4NDWuJlFgfcUJy
 GEQr68mBjMgrXXgqBHjR6h1XfyJ/E+t7oztQI2scqecOcb8uh03q/GzNCofE8QcfR3Vc
 yKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=q/tq0J9ADbe9GkNWVaHD9QAS+rJhqu7CATlDgV//5SE=;
 b=cbJm7DI0GwT2HfSEDtwwyOzit2QiqS7qQ6N+1hM9N+ZK54URETEY6BT0P3lrAx/8DZ
 mnsouIgDEagWlv6GjUuSgLZkP/tdxskXuUV+iRtHTMIipXSLwRxVP1hTpa9Mzh0yfwUG
 1in1FH9cBnU36eRXdG1j2cl8anQB2lMA0N/marZwrkvx0joBI4SwpfK2WlPUplx1hd2h
 wRUPkorefxmu9mkuzyDuiAVPi+Nud3oXTZLxkyBINol85WI15Yh+9CEkmIFZcxFv1if1
 OElU49PMO9YnKMTBo8PPwpAeApUj7uWQr8sPN+Wdt1UAeLL7/GTO/MoPeZeCOJ8MKDb4
 J38g==
X-Gm-Message-State: APjAAAXMegtKXj3DqWOUPIk0Tl0HdvXlJBzZ7GdxX4RRqFm7HuWNrCgc
 VOKJXEu7sIWyh9jY3jLz3CyxoA==
X-Google-Smtp-Source: APXvYqwqpLcNilHMNePInAYsPu8XqFoSf4UtCXsBc9IBylPbk1c0yWtb7xx4vAbu7jyk9D7zwWiQWA==
X-Received: by 2002:a5e:9308:: with SMTP id k8mr27757300iom.143.1565730201709; 
 Tue, 13 Aug 2019 14:03:21 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p12sm3323996ioh.72.2019.08.13.14.03.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 14:03:21 -0700 (PDT)
Date: Tue, 13 Aug 2019 14:03:20 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] riscv: fix flush_tlb_range() end address for
 flush_tlb_page()
In-Reply-To: <20190812144337.GA26897@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1908131359280.19217@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1908080923320.31070@viisi.sifive.com>
 <20190812144337.GA26897@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_140324_052313_0B347EC1 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: schwab@suse.de, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 12 Aug 2019, Christoph Hellwig wrote:

> >  #define flush_tlb_range(vma, start, end) \
> >  	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> > -#define flush_tlb_mm(mm) \
> > +
> > +static inline void flush_tlb_page(struct vm_area_struct *vma,
> > +				  unsigned long addr) {
> > +	flush_tlb_range(vma, addr, addr + PAGE_SIZE);
> > +}
> 
> Please put the opening brace on a line of its own.
> 
> Otherwise looks fine:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, updated patch below.

Looks like checkpatch.pl is no longer issuing warnings about this type of 
brace placement issue.

Queuing for v5.3-rc.


- Paul

From: Paul Walmsley <paul.walmsley@sifive.com>
Date: Wed, 7 Aug 2019 19:07:34 -0700
Subject: [PATCH] riscv: fix flush_tlb_range() end address for flush_tlb_page()

The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SMP
is set is wrong.  It passes zero to flush_tlb_range() as the final
address to flush, but it should be at least 'addr'.

Some other Linux architecture ports use the beginning address to
flush, plus PAGE_SIZE, as the final address to flush.  This might
flush slightly more than what's needed, but it seems unlikely that
being more clever would improve anything.  So let's just take that
implementation for now.

While here, convert the macro into a static inline function, primarily
to avoid unintentional multiple evaluations of 'addr'.

This second version of the patch fixes a coding style issue found by
Christoph Hellwig <hch@lst.de>.

Reported-by: Andreas Schwab <schwab@suse.de>
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/tlbflush.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index 687dd19735a7..4d9bbe8438bf 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
 }
 
 #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
-#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
+
 #define flush_tlb_range(vma, start, end) \
 	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
-#define flush_tlb_mm(mm) \
+
+static inline void flush_tlb_page(struct vm_area_struct *vma,
+				  unsigned long addr)
+{
+	flush_tlb_range(vma, addr, addr + PAGE_SIZE);
+}
+
+#define flush_tlb_mm(mm)				\
 	remote_sfence_vma(mm_cpumask(mm), 0, -1)
 
 #endif /* CONFIG_SMP */
-- 
2.23.0.rc1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
