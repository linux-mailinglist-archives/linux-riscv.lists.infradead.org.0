Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4F328E18
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 01:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Solvr2AnY/WgETRuDlR5JWD3JBdBpheiQiVkzsoeQ0A=; b=OjGNKLDZJx/22wZ/Aefcg+Ra31
	vvZBrU0nNWFTV0QPU+oYthPRE4ykoeIsuudNMgY1mJ34PqQTQlX0h1F5KyV4WMuaWrT0+y7dVmnQO
	pbgIxzZvvqyBJhrB22vs9agkP7rNFY2mMVRIzGo9AqEtbCSYRpgY/IZOUF5ikM77rzuLYhXaZFtxX
	lXEgvyYErpm+epolIwZiEP0FxLBrsoem+WP/CJvbOZJslTY2vfLO5WBQgrIILWikH4ELWr73nawAq
	lLGVR2Owt1H1M0L6EUnj/nM3Y+Y8+RQqTF7HghVNQtUeyQ+zoABcUxg+pZdcrz8QsRceLz4g0+y7y
	1qOXZA8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxYN-0004o7-EI; Thu, 23 May 2019 23:55:19 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxYK-0004nO-5h
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 23:55:17 +0000
Received: by mail-lf1-x141.google.com with SMTP id y19so5680885lfy.5
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 16:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=xQh5W0I98+c3oB3ta6aEBLw922/4T4zsrZf/bWTXTzU=;
 b=En6Q2o1SlX3M7Df2OjIoSIT3soWjKBCQy6sPnuSQE+O3wgvYsqwB4X8Q+dyzV1c1Os
 hQ3hDMwcJ11Nxgi1u46gRXLS3CNrO57rKnfi6fe26xHKpb+46ZFXQGl1vnRKpJhcV4RM
 Yq1GO/x+1erGD7xCvZgu/Sw09bbOPn3LrB/2IUDKO3wOv3PvXJUreex0VqicRBjnQHJq
 cP6XZLiRepHxaS9vTHiQaj6NLxsMjmJvPSxihldmZqwb6S5mexNt34YJMhAyRz5leFqY
 QVH76r4prK2EyCQJMHK0ttiGuZC9+vvpOar4qHvWhLyro1jBNnsExMQVV3V+bjOrU7tA
 wBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=xQh5W0I98+c3oB3ta6aEBLw922/4T4zsrZf/bWTXTzU=;
 b=dnmFHTkPksAejRUbcJcMW+p8SpvayH83IgJJqFw7BHtfPUccjWWcIm1IAlNmY8Lqk7
 ElcRNmzEtzFegoUG+4QaySfS3bC8siYjyQrC1C3rDDv50BPR789dvbOTUseWvwc7qYg4
 0cL/ipECcL9+FOW0Pi65ehC9svfCaVN8QKfD/7OZQDxpAIOyi2n3E3jQKw8u5In5qV8R
 wLLdsdsiluRDIZ6eaeN6hstUmYDtB4+/qvP+csNx4sDPuebuTTPblg+6xLMeDZg8GAb2
 bvqHubEnMmsfp9p1oLF4bIhomiMzGnz8SRFTBA37KEiRT4MdhEu9IeKrgYXLJ23CxzHa
 hodA==
X-Gm-Message-State: APjAAAVHEyZS1ZFlnpJU/yUkluPBLppIJfdGvl1m6E7vugZoIBaPDq+X
 mfxBI4SdF9Eo/Xj9dkTEL1eWZb6DQhdi3bFD0V9QLQ==
X-Google-Smtp-Source: APXvYqzyqqCKcK5t7puDNsK1zCocIX9J4p9I6yTdwocBXY4iGgsf4JaFzrnH5xYTIkXSMvFPo2rTIdBt4XKx+RgDGJU=
X-Received: by 2002:ac2:4286:: with SMTP id m6mr7504444lfh.150.1558655714383; 
 Thu, 23 May 2019 16:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
In-Reply-To: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Thu, 23 May 2019 16:55:03 -0700
Message-ID: <CABEDWGzHkt4p_byEihOAs9g97t450h9-Z0Qu2b2-O1pxCNPX+A@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com, 
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org, 
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, gustavo.pimentel@synopsys.com,
 wen.yang99@zte.com.cn, kjlu@umn.edu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_165516_280954_8D6EAF32 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+Bjorn Helgaas, +Gustavo Pimentel, +Wen Yang, +Kangjie Lu

On Thu, May 23, 2019 at 2:55 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
>
> Always skip odd bar when skipping 64bit BARs in pci_epf_test_set_bar()
> and pci_epf_test_alloc_space().
>
> Otherwise, pci_epf_test_set_bar() will call pci_epc_set_bar() on odd loop
> index when skipping reserved 64bit BAR. Moreover, pci_epf_test_alloc_space()
> will call pci_epf_alloc_space() on bind for odd loop index when BAR is 64bit
> but leaks on subsequent unbind by not calling pci_epf_free_space().
>
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 25 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index 27806987e93b..96156a537922 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -389,7 +389,7 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
>
>  static int pci_epf_test_set_bar(struct pci_epf *epf)
>  {
> -       int bar;
> +       int bar, add;
>         int ret;
>         struct pci_epf_bar *epf_bar;
>         struct pci_epc *epc = epf->epc;
> @@ -400,8 +400,14 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
>
>         epc_features = epf_test->epc_features;
>
> -       for (bar = BAR_0; bar <= BAR_5; bar++) {
> +       for (bar = BAR_0; bar <= BAR_5; bar += add) {
>                 epf_bar = &epf->bar[bar];
> +               /*
> +                * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
> +                * if the specific implementation required a 64-bit BAR,
> +                * even if we only requested a 32-bit BAR.
> +                */
> +               add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;
>
>                 if (!!(epc_features->reserved_bar & (1 << bar)))
>                         continue;
> @@ -413,13 +419,6 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
>                         if (bar == test_reg_bar)
>                                 return ret;
>                 }
> -               /*
> -                * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
> -                * if the specific implementation required a 64-bit BAR,
> -                * even if we only requested a 32-bit BAR.
> -                */
> -               if (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
> -                       bar++;
>         }
>
>         return 0;
> @@ -431,7 +430,7 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>         struct device *dev = &epf->dev;
>         struct pci_epf_bar *epf_bar;
>         void *base;
> -       int bar;
> +       int bar, add;
>         enum pci_barno test_reg_bar = epf_test->test_reg_bar;
>         const struct pci_epc_features *epc_features;
>
> @@ -445,8 +444,10 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>         }
>         epf_test->reg[test_reg_bar] = base;
>
> -       for (bar = BAR_0; bar <= BAR_5; bar++) {
> +       for (bar = BAR_0; bar <= BAR_5; bar += add) {
>                 epf_bar = &epf->bar[bar];
> +               add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;
> +
>                 if (bar == test_reg_bar)
>                         continue;
>
> @@ -459,8 +460,6 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>                         dev_err(dev, "Failed to allocate space for BAR%d\n",
>                                 bar);
>                 epf_test->reg[bar] = base;
> -               if (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64)
> -                       bar++;
>         }
>
>         return 0;
> --
> 2.7.4
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
