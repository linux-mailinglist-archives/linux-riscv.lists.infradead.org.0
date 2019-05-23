Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF5F28E1B
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 01:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mrrWk7o8fghUhlhQvddCljbCq6UaLrf+FU8ULWjc3cY=; b=jIbWGUXbwh/S+J0lvZy9Au/Q2M
	HrK3GqbwWc4vTIWqqLGlcrK5Ss9oH1bS7CHnNWrbG1PxHLdT6X63EOENeCshPpufFLoxQWotv8ijp
	+HdOW0afKJ5J6WFk8fJpLqU7ruJVFyWBQjdAEaaIxH2svczukx+cvOL11vUkIgDOEna3Gf0gBm4yF
	PtWrChUu3Zylb4Z8WGddZBVkx8TmffoykOb4fPBnSZvBdhbcO8tNGPT4HLUPKhZ19qFWdWKR3EnT5
	FAwdwUE4Pov04PuXwZiYauz09UThL7Zz24zKQdr7q8MG+JudsqJdmubYSEw5aMbObWBSRHXZERY6s
	p3aqozjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxZQ-0004xS-3Y; Thu, 23 May 2019 23:56:24 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxZN-0004wL-4o
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 23:56:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id r76so1589278lja.12
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 16:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Rwcv7ftRka+X8HiYdZS3z2oKZ4APHYrkaB4F2nbQq/A=;
 b=AnLJrehX/9SKzLuWRrRIqP+/yUIsQFZcIiCHKFCoKVjJLszzRW631gMNPPgRA8tOP1
 wrqfXWhHRRoqYvBwzWiiheJDTGkKdbcNN+ngCaynpJWye/aRivH1AzTDYkZsRNUu7XfN
 Hzogg9u4Z5W+AR7yKg7u5qHSEeRnmQkCh0b3VhGWXUmBZ+yBgXFGWM1CQrCPUYaKuyHT
 dGVRDU156ornBXx5rdkou5+WPU/hu7WGJdKQ1X81ezANzfm5ub1f9DQNvAR0T+WQUqB4
 8w9RzQRnOTfbvcIe+5gkLnKMB7IZcjZ1IAmhe3nznq8L+Sfaz0nuOiW1V0H+zHcEx/UE
 OWkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Rwcv7ftRka+X8HiYdZS3z2oKZ4APHYrkaB4F2nbQq/A=;
 b=SCgCxTP1eHRXwYqPnUa6ImD5/rjrP1kUiGh6XhKKeQvt1WTCX/AIYpXP1FQdWCh4HJ
 DEcgYm/XAWPJ8tO9Up0mtLBwrgDSa8EtDQx7+QOhdW8Ab93tsgP7BYja9I61zY0bnrDU
 OwaBvy4pFqyLkRkhtrPaenZ//qSV73yIY+eRjpTAkIsYnI2fIHU7PllGUimAOmW0wHzk
 UKuDKL/1xgTbApCPf1XnBPj1l6sVYRldp/o369OAwsYmm3k16E9QOzEGl9L4Damcwate
 zP6sIYCzA0YxfAy35OfZ+cgAqzHbrYiDaTEhDxtQrIhhG6ifEoJDy6S5I/srkhTYTUn0
 zrqw==
X-Gm-Message-State: APjAAAXtUfWts/EICWYkzZMbc1KUR1ujbTnoxtmR4S0w1z4q44kow5NW
 5EmXY7UVxdnuKQ/q/B6VSiLdCfk+KE6mlF0hs6ukhw==
X-Google-Smtp-Source: APXvYqzYv7m8kDn0KpeHZdh5ZzlR7YUak9Qm+XHYYicHUR74JCz6mwG62iVCuLEISNmZxFqT3y6cpf3pLq0Fp50gAM0=
X-Received: by 2002:a2e:655b:: with SMTP id z88mr46764454ljb.108.1558655777580; 
 Thu, 23 May 2019 16:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <1558648079-13893-1-git-send-email-alan.mikhak@sifive.com>
In-Reply-To: <1558648079-13893-1-git-send-email-alan.mikhak@sifive.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Thu, 23 May 2019 16:56:06 -0700
Message-ID: <CABEDWGxMXg7RAgrUL-7W6vgC0BpCj9ys+i7myjxdBgn3vn_P6Q@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Allocate enough space for fixed size BAR
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com, 
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org, 
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, gustavo.pimentel@synopsys.com,
 wen.yang99@zte.com.cn, kjlu@umn.edu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_165621_188808_A4F54991 
X-CRM114-Status: GOOD (  12.53  )
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

On Thu, May 23, 2019 at 2:48 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
>
> PCI endpoint test function code should honor the .bar_fixed_size parameter
> from underlying endpoint controller drivers or results may be unexpected.
>
> In pci_epf_test_alloc_space(), check if BAR being used for test register
> space is a fixed size BAR. If so, allocate the required fixed size.
>
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index 27806987e93b..7d41e6684b87 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -434,10 +434,16 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
>         int bar;
>         enum pci_barno test_reg_bar = epf_test->test_reg_bar;
>         const struct pci_epc_features *epc_features;
> +       size_t test_reg_size;
>
>         epc_features = epf_test->epc_features;
>
> -       base = pci_epf_alloc_space(epf, sizeof(struct pci_epf_test_reg),
> +       if (epc_features->bar_fixed_size[test_reg_bar])
> +               test_reg_size = bar_size[test_reg_bar];
> +       else
> +               test_reg_size = sizeof(struct pci_epf_test_reg);
> +
> +       base = pci_epf_alloc_space(epf, test_reg_size,
>                                    test_reg_bar, epc_features->align);
>         if (!base) {
>                 dev_err(dev, "Failed to allocated register space\n");
> --
> 2.7.4
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
