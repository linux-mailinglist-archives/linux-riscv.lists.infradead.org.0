Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E99E31482
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 20:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dj6uXaBNmf33r2GLRIIZHMuZu87yYrN/zgVjx/XJoHY=; b=c8jFAnUhTnse4E
	MTR/TxFn7HgXhV00/OpdffoVYGnErmzFLvNof/JdTbr0sL76D+IcdwuxGLOLDPYkkr6c9+0prtX+d
	5eu390HcE65tpsHHVNf+UEPxaHexw8CivhPsHbBVxhsQzfvM6A9mn2NUC9tKjuR7zgaPvfR+cejMe
	Y0r/x78+McaMDcYzYNUBjAQirkP52c6YOOJdWeTfdnEfjvl0TXGiRXOErpm8Tlz2c7a4hDXniE58A
	jsbT3N799xxVjHpSxO61OJYDGEnI4HUU8SDdc2uebzcIcZFtlz9IaxzRyQzkBv6z2izS0CyBmtG77
	yZFc5nFyRXT8zwpevWGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWm5P-0008Be-Fo; Fri, 31 May 2019 18:17:03 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWm5M-0008Aw-0Q
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 18:17:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id o13so10496121lji.5
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 11:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mMKtgmWbW8xYAGhBwAG4c8b4zuI5g6VzqZjp1pMjfUg=;
 b=TSgZ8KSuC8Uh58feLuA2QmX3LpgiOCKvOAfRY8zwRYZZsWEog8DDbJslbbYif12yFl
 9QxkArhnQZY7+fOQo4Tk7jI6vHsOtddSAbU/CiK4w9329KysTnC1NMLUI3PJLpkKoYBd
 vHlK890XEuNv6cYqTLxqksKmYyl9sTMpSMmy3HAlGhPDq+C9s8cVpkezs8LcrrbvnQNu
 /zS3BaFkKBxPF1Q3rn6mOjMyMFSX2mxYbhgEew3wRsL2GOScavdE+SbI9WTP1c/X3Gof
 4VLgMOU7ffGPB+HUW115BIIw9JvtIpssUl6Q2lLuWT7c5CrtiJHS5cM2PQdMJWbb1Jz8
 e2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mMKtgmWbW8xYAGhBwAG4c8b4zuI5g6VzqZjp1pMjfUg=;
 b=D1DRdhEaV+HaeUYjtUzCC04Ma/R4Y8lB/FHoZqomLJntDRor13mIhgWoAVoDgJoU6s
 Emx4uUYbfu8i8+x/jqKbp3m41/bJbcEOcefZWhNVmAvOZs8jAgDCiwGHbsZBoXJ0gGTz
 tFE/uyFQSvxAmwASsBkOrGAfcyM10oDntv292YGFP3f7Ptc5Y2Y8LzDi2O9doMEvoKoM
 PZ1lL2dCGnemrUH0hxiMCnRCHXxWwdeW6iaKg2QXZZfQDJrU6gHwyr3LpHrscG7Xj/OB
 RGuDxw378yyRPjOL9Qh48RzRCFVSm/mDqw8oaGhuMaierzGoMyo3Wa1JdcmGWdjkcasK
 5DWg==
X-Gm-Message-State: APjAAAUxUkjx8+q8mOqAnURlQodlqBSbjGsyV/6PlvcPtP6PgkUyjt80
 IIl8Rt5uW/WfpuvDg888TCOmz7RoMZEELwYTnhRadA==
X-Google-Smtp-Source: APXvYqxtHw0FLL/5LL6+uKZaUo8UTHEM9pyFRWVXtoz6RHQ9WnvCDZHxV3XOVaoKoFIbWWrVdMOLUlR3ZRO8fhjVXzQ=
X-Received: by 2002:a2e:80d5:: with SMTP id r21mr6619039ljg.43.1559326617481; 
 Fri, 31 May 2019 11:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
 <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxsQ9NXrN7W_8HVrXQBb9HiBd+d1dNfv+cXmoBpXQnLwA@mail.gmail.com>
 <305100E33629484CBB767107E4246BBB0A6FC308@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
 <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
 <CABEDWGxLeD-K8PjkD5hPSTFGJKs2hxEaAVO+nE5eC9Nx2yw=ig@mail.gmail.com>
 <75d578c2-a98c-d1ef-1633-6dc5dc3b0913@ti.com>
In-Reply-To: <75d578c2-a98c-d1ef-1633-6dc5dc3b0913@ti.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Fri, 31 May 2019 11:16:46 -0700
Message-ID: <CABEDWGxBxmiKjoPUSUaUBXUhKkUTXVX0U9ooRou8tcWJojb52g@mail.gmail.com>
Subject: Re: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_111700_201647_3A569B71 
X-CRM114-Status: GOOD (  26.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, "kjlu@umn.edu" <kjlu@umn.edu>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "wen.yang99@zte.com.cn" <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 10:08 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> Hi Alan,
> >
> > Hi Kishon,
> >
> > I have some improvements in mind for a v2 patch in response to
> > feedback from Gustavo Pimentel that the current implementation is HW
> > specific. I hesitate from submitting a v2 patch because it seems best
> > to seek comment on possible directions this may be taking.
> >
> > One alternative is to wait for or modify test functions in
> > pci-epf-test.c to call DMAengine client APIs, if possible. I imagine
> > pci-epf-test.c test functions would still allocate the necessary local
> > buffer on the endpoint side for the same canned tests for everyone to
> > use. They would prepare the buffer in the existing manner by filling
> > it with random bytes and calculate CRC in the case of a write test.
> > However, they would then initiate DMA operations by using DMAengine
> > client APIs in a generic way instead of calling memcpy_toio() and
> > memcpy_fromio(). They would post-process the buffer in the existing
>
> No, you can't remove memcpy_toio/memcpy_fromio APIs. There could be platforms
> without system DMA or they could have system DMA but without MEMCOPY channels
> or without DMA in their PCI controller.

I agree. I wouldn't remove memcpy_toio/fromio. That is the reason this
patch introduces the '-d' flag for pcitest to communicate that user
intent across the PCIe bus to pci-epf-test so the endpoint can
initiate the transfer using either memcpy_toio/fromio or DMA.

> > manner such as the checking for CRC in the case of a read test.
> > Finally, they would release the resources and report results back to
> > the user of pcitest across the PCIe bus through the existing methods.
> >
> > Another alternative I have in mind for v2 is to change the struct
> > pci_epc_dma that this patch added to pci-epc.h from the following:
> >
> > struct pci_epc_dma {
> >         u32     control;
> >         u32     size;
> >         u64     sar;
> >         u64     dar;
> > };
> >
> > to something similar to the following:
> >
> > struct pci_epc_dma {
> >         size_t  size;
> >         void *buffer;
> >         int flags;
> > };
> >
> > The 'flags' field can be a bit field or separate boolean values to
> > specify such things as linked-list mode vs single-block, etc.
> > Associated #defines would be removed from pci-epc.h to be replaced if
> > needed with something generic. The 'size' field specifies the size of
> > DMA transfer that can fit in the buffer.
>
> I still have to look closer into your DMA patch but linked-list mode or single
> block mode shouldn't be an user select-able option but should be determined by
> the size of transfer.

Please consider the following when taking a closer look at this patch.

In my specific use case, I need to verify that any valid block size,
including a one byte transfer, can be transferred across the PCIe bus
by memcpy_toio/fromio() or by DMA either as a single block or as
linked-list. That is why, instead of deciding based on transfer size,
this patch introduces the '-L' flag for pcitest to communicate the
user intent across the PCIe bus to pci-epf-test so the endpoint can
initiate the DMA transfer using a single block or in linked-list mode.

When user issues 'pcitest -r' to perform a read buffer test,
pci-epf-test calls pci_epf_test_write() which uses memcpy_toio(). As
before, a read from the user point of view is a write from the
endpoint point of view.
When user issues 'pcitest -r -d', pci-epf-test calls a new function
pci_epf_test_write_dma() to initiate a single block DMA transfer.
When user issues 'pcitest -r -d -L', pci-epf-test calls a new function
pci_epf_test_write_dma_list() to initiate a linked-list DMA transfer.

The '-d' and '-L' flags also apply to the '-w' flag when the user
performs a write buffer test. The user can specify any valid transfer
size for any of the above examples using the '-s' flag as before.

> > That way the dma test functions in pci-epf-test.c can simply kmalloc
> > and prepare a local buffer on the endpoint side for the DMA transfer
> > and pass its pointer down the stack using the 'buffer' field to lower
> > layers. This would allow different PCIe controller drivers to
> > implement DMA or not according to their needs. Each implementer can
> > decide to use DMAengine client API, which would be preferable, or
> > directly read or write to DMA hardware registers to suit their needs.
>
> yes, that would be my preferred method as well. In fact I had implemented
> pci_epf_tx() in [1], as a way for pci-epf-test to pass buffer address to
> endpoint controller driver. I had also implemented helpers for platforms using
> system DMA (i.e uses DMAengine).
>
> Thanks
> Kishon
>
> [1] ->
> http://git.ti.com/cgit/cgit.cgi/ti-linux-kernel/ti-linux-kernel.git/tree/drivers/pci/endpoint/pci-epf-core.c?h=ti-linux-4.19.y
> >
> > I would appreciate feedback and comment on such choices as part of this review.

Thanks for all your comments and providing the link to your
implementation of pci_epf_tx() in [1] above. It clarifies a lot and
provides a very useful reference.

Regards,
Alan Mikhak

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
