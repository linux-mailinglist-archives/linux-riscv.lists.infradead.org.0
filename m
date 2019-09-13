Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704F0B24B2
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 19:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7hSdGocB2CDFKK1+AbVFwHsFy9enEekhDt+AFl9bWk=; b=QKu8RfUNyAqQR2
	HzKOyHks8IvIidIX8+FJqw4rnjXHZKHz6XcSgXJ3fN8zv+d7/6S+IqcriG/cylp5nhVfCDty0+trG
	F1+OQZF3UtonyKAyohyvFETDeQJNUWu/Gi1gcbu7jFiZqgfVlDMSR4uLHEQUXM/rw0n6ojN+o4oRz
	5X4x7A2PvL7ANsHXgh9dujPDxwFx4T/uQk+0C9OnX6XlcGm7JandpQFz4J/q7PLN8iUqBrK/PdDY+
	0Rpw28eIdpZmR9YKGCK/lq0lMSLrhO3dl4oH0Q28x+kXAokApYNOwye1PQT/0XZqcVBxQnPgx3HEw
	pRQPIXPOUlB9nIO1Lnmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8pYH-0001VN-RF; Fri, 13 Sep 2019 17:40:10 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8pYC-0000K1-FU
 for linux-riscv@lists.infradead.org; Fri, 13 Sep 2019 17:40:06 +0000
Received: by mail-lf1-x143.google.com with SMTP id w67so22743596lff.4
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 10:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n/8TaZzU4/Xd0tjzBKZmUfSDILX2IFr4ta9frYs5Xs0=;
 b=SG0DRyf5kA6SfAWvLtYPpTznmt8fjufKkkzVymJlQgIOKEaXvEH993F6f5kACbN+Yz
 lQ59k1nNDgSMthjqAKWH0SnAOgMLOYCbaMK3He6s/3UrpVFl+fAcnwMUonRXg/N0V+vO
 LarcEqtWjc5HfRN9gtzoUpOdxFRF8Qwzk5gLh3zTcV9n00M6tKYglOrhOIALZHi1DdoV
 El/q3LbxaktFwDSOnnGv+Xol4RPbrjoB1LdYe4fVBNmNKd7TZvsHOtNY6YkSRO5SAD7J
 SksemlJhD2EzSXR8Z7pX7rHudvXcWTv6xul2cxLZ99PC43CGMv+oBnAWf56mQ0EJorqj
 fpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n/8TaZzU4/Xd0tjzBKZmUfSDILX2IFr4ta9frYs5Xs0=;
 b=IZDh7VLTKGpV1xIKD6igX7VxAGQF2gjtlCQFL7sYvLmPNR9Dml0nzNyi2NBfU9Hg6b
 c9JAFo0aG8boI2zIDo6/GlT2uIpEc5ZyDMllwkTErXWXrZLhu8/JT9tJVhXPNpt9JiTE
 ++S4+vNiCTP3I2fjPtBkqIlg5a/atcRM89+Rx6Z7aEJuEcBT6KhLn6IVq4fAqKrBbkzS
 MkgOW7FQjjV48crg8HKvKMB76MXKOGJZl0ANQGgxKGVQ0IlNIzMok/6CtyrN8Qc9cNr2
 56IvBO++NHoE8N8KQFI/4Y3ZOSRvXl6JbV/hAwIslX2yLjZWqYlP4gwyvCATiXZlhz4H
 TH+w==
X-Gm-Message-State: APjAAAU9U3TjF+rcKfMls4Qvu3TDThJLfCEdw1FWM7UN5ux1Yj3f8/oe
 83LLKFlUcmUxfQuJV1gJGKYOXec0/tkfEtGx6hr2NQ==
X-Google-Smtp-Source: APXvYqyXa+N3QbXmZxivySXywHwcEIuvcRBkkU+lKWn7Lej6OFrBl0P0SWOoL1lQNIXYqbqvQ88ld/TUvWmVy+4lYxY=
X-Received: by 2002:a19:ac0c:: with SMTP id g12mr32149008lfc.128.1568396401610; 
 Fri, 13 Sep 2019 10:40:01 -0700 (PDT)
MIME-Version: 1.0
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
 <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxsQ9NXrN7W_8HVrXQBb9HiBd+d1dNfv+cXmoBpXQnLwA@mail.gmail.com>
 <305100E33629484CBB767107E4246BBB0A6FC308@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
 <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
 <CABEDWGxLeD-K8PjkD5hPSTFGJKs2hxEaAVO+nE5eC9Nx2yw=ig@mail.gmail.com>
 <75d578c2-a98c-d1ef-1633-6dc5dc3b0913@ti.com>
 <CABEDWGxBxmiKjoPUSUaUBXUhKkUTXVX0U9ooRou8tcWJojb52g@mail.gmail.com>
 <6e692ff6-e64f-e651-c8ae-34d0034ad7b9@ti.com>
 <CABEDWGx2N66L=27JY6Ywbfny78UaxENkxBTqxU37PfuQO-ZMZw@mail.gmail.com>
 <40fafe93-d2dd-b1f5-bc16-cd84ff07bd13@ti.com>
In-Reply-To: <40fafe93-d2dd-b1f5-bc16-cd84ff07bd13@ti.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Fri, 13 Sep 2019 10:39:50 -0700
Message-ID: <CABEDWGy3VdH40QAz5NVhQHLLXXf2C5W22uUXEw3yCeNz0hfF-Q@mail.gmail.com>
Subject: Re: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_104004_590685_F6F30ED1 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>, haotian.wang@duke.edu,
 "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Haotian Wang <haotian.wang@sifive.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "wen.yang99@zte.com.cn" <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 5:11 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> + Haotian Wang
>
> On 03/06/19 11:12 PM, Alan Mikhak wrote:
> > On Sun, Jun 2, 2019 at 9:43 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >> Hi Alan,
> >> On 31/05/19 11:46 PM, Alan Mikhak wrote:
> >>> On Thu, May 30, 2019 at 10:08 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >>>> Hi Alan,
> >>>>> Hi Kishon,
> >>>>
> >>>> I still have to look closer into your DMA patch but linked-list mode or single
> >>>> block mode shouldn't be an user select-able option but should be determined by
> >>>> the size of transfer.
> >>>
> >>> Please consider the following when taking a closer look at this patch.
> >>
> >> After seeing comments from Vinod and Arnd, it looks like the better way of
> >> adding DMA support would be to register DMA within PCI endpoint controller to
> >> DMA subsystem (as dmaengine) and use only dmaengine APIs in pci_epf_test.
> >
> > Thanks Kishon. That makes it clear where these pieces should go.
> >
> >>> In my specific use case, I need to verify that any valid block size,
> >>> including a one byte transfer, can be transferred across the PCIe bus
> >>> by memcpy_toio/fromio() or by DMA either as a single block or as
> >>> linked-list. That is why, instead of deciding based on transfer size,
> >>> this patch introduces the '-L' flag for pcitest to communicate the
> >>> user intent across the PCIe bus to pci-epf-test so the endpoint can
> >>> initiate the DMA transfer using a single block or in linked-list mode.
> >> The -L option seems to select an internal DMA configuration which might be
> >> specific to one implementation. As Gustavo already pointed, we should have only
> >> generic options in pcitest. This would no longer be applicable when we move to
> >> dmaengine.
> >
> > Single-block DMA seemed as generic as linked-list DMA and
> > memcpy_toio/fromio. It remains unclear how else to communicate that
> > intent to pci_epf_test each time I invoke pcitest.
> >
> > Regards,
> > Alan
> >

Hi Kishon,

FYI, I integrated your changes for DMAengine client support to PCI
endpoint framework into my development branch. The following is the
link you provided earlier as reference. I have been using it with good
results. Haotian Wang also used it in a recent patch for PCI endpoint
function for virtnet. Would you be able to comment on if and when your
DMAengine client support may be submitted upstream?

http://git.ti.com/cgit/cgit.cgi/ti-linux-kernel/ti-linux-kernel.git/tree/drivers/pci/endpoint/pci-epf-core.c?h=ti-linux-4.19.y

Regards,
Alan Mikhak

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
