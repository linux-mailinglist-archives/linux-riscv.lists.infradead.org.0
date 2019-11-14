Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBB9FC4BD
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 11:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLML+2uQDVjf3ULermIRe5Umd0VHHs9Nm1S5B/gOEVs=; b=se/q9GwHA8PwgR
	u5ESgbnw7n7wE1k4LPN5403Eqnb4c86s/C8jOtCRdnVD1vNAk8ldNfshWWHR6ETMFQqFBpseWugow
	HhfyfoRi65t64ZUosv9saZniclDQuzxOWSIhBvbADZlKXLWexof1BplgNkN5/8YG/Zv+F++CcPGzR
	N4yERLH9TEKuxjMoP5xcBrhRoZTujDuzM2eSfe+CsSA8tjDtIlNL+md2zmbxfMCibH3CWWqTmHhWT
	ArprK/7xhwcDxXeFWx/wCESEr2KJ8fW93/+3qFw9VCsmJXyraLYrRoHUhLCyADOlC2e++vY+W9ST2
	WVDshVOsdLpady5SwmKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCkx-0007lu-FN; Thu, 14 Nov 2019 10:53:43 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCku-0007lE-DT
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 10:53:42 +0000
Received: by mail-io1-xd41.google.com with SMTP id i11so6228015iol.13
 for <linux-riscv@lists.infradead.org>; Thu, 14 Nov 2019 02:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kc1/vTjFDnJ6RXRT1JfBA3hLPFiKVT3unzuRtbwelRQ=;
 b=hvzFvQO7iwFtVGzpjj/Maiqd069dCHHQRZr66u+oC+RQ1n+onzGFN2lFQyU7+ki5Nt
 X3c3lwpx/09gSFw9oZsytsBMgFMLyLarOOpIMbLhDHkbmObM/6ddkY6niO8e8pzoCygg
 W1A2GlQSLF6PLnckXx2TGtGPdwFGkV1r33rkH0iS+Uaz+oaA7VOiSv/Il/7bUKFTm4lQ
 zlPQAs4GXxa+7MuK+3lU09La6r2BEWna8dDKT+hvmDm9LbPT8b/fRUFwyDs6meFARJTr
 2ZTknw4Rw8HFpc2I50vVO08psCbJDF4v3rIgHWmmPQaJgB+3u/wElMqGnLfiUdpaUaIQ
 4eCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kc1/vTjFDnJ6RXRT1JfBA3hLPFiKVT3unzuRtbwelRQ=;
 b=WTy6oXrztRKfMlkC/5GCzDEAuD9GBSNFrwJORxyU4fuA95Qw4q2AR6vZQnlWpA+4uy
 iviZHQmYYfgMkqCTur6ofUI+ZhMGAE+H5C8W2l6492aepeVmcwpC4JkRgcLFHWJPPFeR
 R1Gz8W9zRESyUFV1lS/EJQOjBw524h0dzWvUuRFUy5brm/Rw6SgpOL/bOlFstYCXgaOL
 QMoCX/5QZH3Lvik1WB4ahrjM2ktAla9G3PrPpGGcDpyjqLgesbzyvfJTuWmgvvrkXCJW
 E6vpiQXDbb6BFj+5AGNc/2HlOwzPQlbjrV23ahYL9Oy7OIuzlknrkLtVjt7JBAMHf4aS
 fwPA==
X-Gm-Message-State: APjAAAWtl0fjrdedoYle3i+hmh9Q+ZTW3tzIVbgzWJr8U/dF+ufm3Thb
 AHaDh67BgX02fL89xnSKJxIYYQpNJqBT28R+AbJPsQ==
X-Google-Smtp-Source: APXvYqwAEZUqjQiKuLs/wQ808KcqyDjY/QSLEFXpvnVRqBTItldaB74gt5LHaetoQeAUw00tv7D7uTNxdb8HFM/8Dxk=
X-Received: by 2002:a6b:5f0e:: with SMTP id t14mr8298204iob.228.1573728818553; 
 Thu, 14 Nov 2019 02:53:38 -0800 (PST)
MIME-Version: 1.0
References: <20191107084955.7580-1-green.wan@sifive.com>
 <20191114071551.GQ952516@vkoul-mobl>
In-Reply-To: <20191114071551.GQ952516@vkoul-mobl>
From: Green Wan <green.wan@sifive.com>
Date: Thu, 14 Nov 2019 18:53:28 +0800
Message-ID: <CAJivOr6=7+vYUe1tmgEkOAbtoT6=0-6zzTGzfamycjHqqneWRw@mail.gmail.com>
Subject: Re: [PATCH v6 0/4] dmaengine: sf-pdma: Add platform dma driver
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_025340_483168_E4F2F060 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thanks, Vinod,

I found there are "/**" in the beginning of files but not for
commenting function purpose. Those comments cause kernel-doc W=1
warning. I've fixed them and rebased to latest source. will send the
patch after running regression tests soon.

--
Green

On Thu, Nov 14, 2019 at 3:15 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 07-11-19, 16:49, Green Wan wrote:
> > Add PDMA driver support for SiFive HiFive Unleashed RevA00 board. Mainly follows
> > DMAengine controller doc[1] to implement and take other DMA drivers as reference.
> > Such as
> >
> >   - drivers/dma/fsl-edma.c
> >   - drivers/dma/dw-edma/
> >   - drivers/dma/pxa-dma.c
> >
> > Using DMA test client[2] to test. Detailed datasheet is doc[3]. Driver supports:
> >
> >  - 4 physical DMA channels, share same DONE and error interrupt handler.
> >  - Support MEM_TO_MEM
> >  - Tested by DMA test client
> >  - patches include DT Bindgins document and dts for fu450-c000 SoC. Separate dts
> >    patch for easier review and apply to different branch or SoC platform.
> >  - retry 1 time if DMA error occurs.
>
> I have applied this expect dt change. I see some warns due to missing
> kernel-doc style comments with W=1, please fix that and send update on
> top of these
>
> Thanks
> --
> ~Vinod

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
