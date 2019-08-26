Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8439D65D
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 21:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=yI8tqSoBlA2hwvg7eJN6i+T8jLX1uzEKDJ+JBRo5piY=; b=GKlWbVGwOCA8mgZGoIEymrJxF
	O6eHWwWWKwDUayVIHqC+OnfheKk8Ox2GeLX/F7AhhchhsHCenKzjryfDRC0K1REq3b07oUaUxhbC8
	5kMgfjdDa/ncNiRv8rdNTSOTI3EKGatyER3dElBDsBZVRrT1dAFd4smvjD9seoBITvreL11do4Mmd
	6GxpOaCzZDFs8FYJ2JmUyVdXTfMs9bYNjmaJql6U+r1TV7rivNsjFs3oyFu/kMge31EMAsSHg9u2e
	dnGwwS4JPFDJY3I7zf/Yuk46GMjvPXLUTESZSLKUFjDKCfSdgO4qLesL/68EOnPl7K9t3qBPEdwt5
	WwKgUWqoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KZm-0007eW-Dh; Mon, 26 Aug 2019 19:22:50 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KZh-0007eD-HJ
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 19:22:46 +0000
Received: by mail-pf1-x430.google.com with SMTP id v12so12414352pfn.10
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 12:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ZadR3Ew3/6Ag7WzsoAKFdPu4Q+E7SIHTyrErLs78DNE=;
 b=CH+f5ENvLHTVUR685CCPc8xKUQOKMwtzJwfwH1PWcP4Oup1bOQ26PFTdklt47V0uNV
 sN1/8nSfwJTgZf9WJxbiSx9z7++U69ZrINsa+nN5zht1TJwD3KXr5XV3Kjiu5NA+iDmN
 lSPO81QGes0MGATJrE+cUZqvqyY+u9by+QnkQUf5SbPF5+Tig+VBjG9RhH92Wd/jeQvm
 p5YUjKAcyq/KjSZEptsl54EJtOP/J0gBkACdJQ/2rUW19/jv/+ESWq7UkkzcODGsvVI/
 cNoFsWW6J7oAom6ZOJEx3VrIxmhf16SLAgTRsfM3pKtKHXv9qq1GEUcyrlKHxdLu+kJf
 4v8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ZadR3Ew3/6Ag7WzsoAKFdPu4Q+E7SIHTyrErLs78DNE=;
 b=qyBlo3oYjBHx/lmPC3wSNR7z41UvuhYZk4mR5SU+hPZWNRBwBe0MuRaFFElMGPUPv/
 WN11ly8afV5SnlNbYI9MoXjYbdAS6xY0NLZhcq/QS2p6LwSsrFAYjbt79ZdVd/iMaT96
 vMOkfY5A4tRL8p41LR25C1NYNq2qN1sqdYpIn06zJ8aDKnL/t9QP5f9SF6GmZQG4WKXf
 isFZ9DKqO0OlABNU5jeaHVN9i4ZzKo9AW+06qku51BruetvoAUEmWVwGewyExBuMdNJC
 nd9HoDdAaO7/W7BPGtiBoPhzR87ZEtHivOYEw/qF4kdEliyhp/s45kKgCTGN6pfqC6IP
 CvtQ==
X-Gm-Message-State: APjAAAU63BxZ9X4GUsn43Zx9SggJyd5y2VNtdnQcZ6xdcQtVdSkPdsg9
 m40M5VxvPuucPLYzKB8BSAfJM1IWg/jbbQ==
X-Google-Smtp-Source: APXvYqx1Zm4kZXF4d+rN+P9hZKc+VkT4a8xPYmUom5qh5nsWW4DLmpn+iMwBY6fWMar+yGu6p7AR/A==
X-Received: by 2002:a17:90a:f995:: with SMTP id
 cq21mr20167125pjb.27.1566847363740; 
 Mon, 26 Aug 2019 12:22:43 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 185sm12096400pfa.170.2019.08.26.12.22.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:22:42 -0700 (PDT)
Date: Mon, 26 Aug 2019 12:22:42 -0700 (PDT)
X-Google-Original-Date: Mon, 26 Aug 2019 12:20:06 PDT (-0700)
Subject: Re: RISC V Kernel Decompressor symbols
In-Reply-To: <CAK1XJzWoaJyQkbXU-hvBLKsUMdgSj7woJo0oAEdN_HDDu4q50Q@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: gsatish.ldd@gmail.com
Message-ID: <mhng-bd3878fc-a8da-48ee-b77e-623f70946d22@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_122245_605014_BFDC6AAD 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, anup@brainfault.org,
 david.abdurachmanov@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019 02:34:27 PDT (-0700), gsatish.ldd@gmail.com wrote:
> Hi all
>
> I am trying  to find out the following symbols in RISC V kernel code
> 1. Kernel decompressor symbols in RISC V kernel, which are equivalent
> to ZTEXTADDR, ZBSSADDR, ZRELADDR, INITRD_PHYS, INITRD_VIRT,
> PARAMS_PHYS in ARM Arch.

We don't have a self-decompressing image.

> 2 .Kernel symbols in RISC V equivalent to PHYS_OFFSET, PAGE_OFFSET,
> TASK_SIZE, TEXTADDR, DATAADDR, VMALLOC_START / VMALLOC_END,
> VMALLOC_OFFSET in ARM arch.

These should largely be the same, you can grep for them.

> 3. Architecture specfic macros in RISC V equivalent to BOOT_MEM(param,
> vio, io), BOOT_PARAMS,FIXUP(func), MAPIO(func), INITIRQ(func) in ARM
> Arch.

These are handled in more general ways: boot params are passed via /chosen in 
the device tree, for example.

> Can you suggest me where will find the same , if RISC V is using
> different kind of symbols/params for the same usage, what are names of
> the same & where they are located.
>
> Thanks & Regards
> Satish G
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
