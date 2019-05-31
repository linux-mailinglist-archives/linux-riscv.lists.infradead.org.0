Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F5B309B1
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 09:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HG2oDPs++NXpAi5An5hR2f3mJvd/M/fb6NfF78mpaLI=; b=eIZbV0cH9O1IyL
	ZvSidMAfgkyrOXE+NUnIYyGJs2RiDs8ts+x9K13DAz0WBNuVmEbK8nfgZst0Xqz8isR2CFaRgDUWp
	YZAI58cm2vzyr/9yKrGl4nAYALAcmUvd3PODmquAyUgzvDP/nLx3Gja55stjjOHfnpqIvxTMxluYb
	sBkT+vHhZp5IMRSfKFz86x/I7kg4ivE6SGE/rok6Y/GIjZeWsx7BRc4+Vl6+pqZr9Rw0wyJ+kdSQt
	sPF5SYqCrEXhXTqs3laOIAjzGfhvf4HfFWeACikgV7XgdvCO1SlHgzYRQEDiIGoiGGKrA8OABdfGQ
	JIVg7kmm49bBfQ2xKANg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcIp-0002Ue-C9; Fri, 31 May 2019 07:50:15 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcIm-0002Ty-IU
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 07:50:13 +0000
Received: by mail-qt1-f194.google.com with SMTP id x47so6891975qtk.11
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 00:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GwaITjmEuTof6u7MeG3GyILN9L8qj0XaOeE2YibaLeg=;
 b=HUivt0K24yj2qAzq3BkLn1nvlEMMZf9nenNsAaWbbVUhbecdaKOW+YU8CIgkvA5ihR
 VizUnJ6GAoOzVxJCFqeRy6rnMNS5+wZZn1w91Ud4DQmRMgbzn/mMqb/B7dVqo6+j9iEW
 83sYf7T41qmLNVglFVZR4rRNaxTRA9dkM/PsvPPyJkm4fWq5MQyN+sSP3WlnaXHUjee9
 VxDCpm2rI23aQ/I8D4igPXFmzFUf3XOUNHJeIXEXIN9Q/RX2BcBKGbOghOT3bnDr0aAo
 BD+SaW6HpEe040lJ8fRe6IPLwpK0cAVOqHan7iD0SmSPZ9IreO2dgA5ueDQ+8Qn+nLLj
 xfdw==
X-Gm-Message-State: APjAAAVSXRPKAvHQ8MgLLX4E/v3jHPNqi1eTL0sVvAOyulegZBYAPCY2
 8CloiaMLbIzdtH8UlIw/j8ZZw2j62o8+vSiCjIY=
X-Google-Smtp-Source: APXvYqwQB/JhCGjqlpNaldYQoGI4yfCEZhY1gzjbw3cSbTwub4t7W4H0B3NZ9jqg8ZYIlsA2SYsCySbJzJJdaOlmM1Y=
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr6984448qtd.7.1559289010013;
 Fri, 31 May 2019 00:50:10 -0700 (PDT)
MIME-Version: 1.0
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
 <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxsQ9NXrN7W_8HVrXQBb9HiBd+d1dNfv+cXmoBpXQnLwA@mail.gmail.com>
 <305100E33629484CBB767107E4246BBB0A6FC308@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
 <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
 <20190531050727.GO15118@vkoul-mobl>
 <d2d8a904-d796-f9f2-8f4a-61e857355a4f@ti.com>
 <20190531063247.GP15118@vkoul-mobl>
In-Reply-To: <20190531063247.GP15118@vkoul-mobl>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 09:49:53 +0200
Message-ID: <CAK8P3a2jePe7Qfjciq4fdfngAudzCb-cai4fr3_BG_evnbjhvw@mail.gmail.com>
Subject: Re: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_005012_614247_FE818A5D 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Alan Mikhak <alan.mikhak@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "wen.yang99@zte.com.cn" <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 8:32 AM Vinod Koul <vkoul@kernel.org> wrote:
> On 31-05-19, 10:50, Kishon Vijay Abraham I wrote:
> > On 31/05/19 10:37 AM, Vinod Koul wrote:
> > > On 30-05-19, 11:16, Kishon Vijay Abraham I wrote:
> > >>
> > >> right, my initial thought process was to use only dmaengine APIs in
> > >> pci-epf-test so that the system DMA or DMA within the PCIe controller can be
> > >> used transparently. But can we register DMA within the PCIe controller to the
> > >> DMA subsystem? AFAIK only system DMA should register with the DMA subsystem.
> > >> (ADMA in SDHCI doesn't use dmaengine). Vinod Koul can confirm.
> > >
> > > So would this DMA be dedicated for PCI and all PCI devices on the bus?
> >
> > Yes, this DMA will be used only by PCI ($patch is w.r.t PCIe device mode. So
> > all endpoint functions both physical and virtual functions will use the DMA in
> > the controller).
> > > If so I do not see a reason why this cannot be using dmaengine. The use
> >
> > Thanks for clarifying. I was under the impression any DMA within a peripheral
> > controller shouldn't use DMAengine.
>
> That is indeed a correct assumption. The dmaengine helps in cases where
> we have a dma controller with multiple users, for a single user case it
> might be overhead to setup dma driver and then use it thru framework.
>
> Someone needs to see the benefit and cost of using the framework and
> decide.

I think the main question is about how generalized we want this to be.
There are lots of difference PCIe endpoint implementations, and in
case of some licensable IP cores like the designware PCIe there are
many variants, as each SoC will do the implementation in a slightly
different way.

If we can have a single endpoint driver than can either have an
integrated DMA engine or use an external one, then abstracting that
DMA engine helps make the driver work more readily either way.

Similarly, there may be PCIe endpoint implementations that have
a dedicated DMA engine in them that is not usable for anything else,
but that is closely related to an IP core we already have a dmaengine
driver for. In this case, we can avoid duplication.

      Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
