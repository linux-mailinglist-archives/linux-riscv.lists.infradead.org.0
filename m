Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C00A28E12
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 01:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QleAwy3zmiM01HqK4RgFF+4m+SaHDGzvY9yE84af3ew=; b=KDZEUJN4O5Vd4BIliEGl5yfpXV
	BOYYw5sKzlcxteYE6uaQlK+gIh3p1KqbG//gz4ZdAlLJikWrCqELZOTDtkY63W/3qsZnmClMvjZ9+
	CHvYb9VO3Eb/KYyLIQ4dS/ejprDwF9tv8MxKpaaWkbH8IoUpfXzydr9wyNTdHwsyRZboVHbPlU4U9
	Zeivl7AwbK6U9O4Q15K3UK68tFMrvQRN1jYniYk4MEd3jgZxu6+LNDV6R2fFCuRrDmMA0PD+uKU27
	DlmOZObhphqSOLN96yXTFF4UTY+pwXbAQJVHC4joRAYhrCTvM9nWMbqgGUSnYTLuCuDZp6xWhboJ+
	dh9NrCkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxUH-0002tx-UK; Thu, 23 May 2019 23:51:05 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxUE-0002tO-Sj
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 23:51:04 +0000
Received: by mail-lf1-x141.google.com with SMTP id n134so5649676lfn.11
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 16:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=fhBZncJ2MpAJBlQB8zRObQZP1s/1ENOk1yYHyMaqLDc=;
 b=CwBpnrcYLEefMJFuxPFCRN4iTwN5WamdydpeCsRT71D0rSxVvB/+yh7YpZYxb0y/st
 5uIc3/aNLUiHEsPWzhZUOxFhlgrSOswawfDUiHAURx0ICrBTwtC4fGeRzeK+bQ9fxzO2
 AUqaFa327tG+7cjZlXV0TpFwev6e76lpur/kCU2/RB8eCN98srXtjhNhv3+3AfiHhVYt
 VOUOoJ5Pj7J83Mghc5cBnVxIjhyDuj/U6gaRNjvAzyqixszSffdBW835Yysw9I2gNvPW
 YuzNr3ULFt2eu7hOGS1lkEYi8akIZfNoRkPNDZvD25cMEQQZ5axf+KYvtbiHXAS7lkDn
 qbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=fhBZncJ2MpAJBlQB8zRObQZP1s/1ENOk1yYHyMaqLDc=;
 b=eNG4rVKvS80RAhiOcdxHJ1sewaQjgZDFvjxrr/L8GeB0jIOU6N8csKotQ3aNc5RJRq
 VXiyiP4nhWZz/ymAMdCtDKXqiEr2+Bok1NCSC+Z3jDKsrvgiy8pTK95E5ABgk/h7oIh8
 l22hWMv4Gfb3aF9GXp/yr0XtHeKMlRNffj0b7tMdrNsExYAqasnL6uvKomZPgM8ZODdP
 7xmTUc4Oyi5QND1ANGsF6MjhOnvtx39Bx4dVu5sE8gZuPKbRP9wP9I+TgwTJurantuSM
 hChyel/wAW0tIgMoHjW6RDk1lyxih4UV5r6tACjfN/drkq9vu+7Xr8BofXc1dVsFyoC/
 SEZA==
X-Gm-Message-State: APjAAAXM6lLYDQWljQJlJN/l5wq8eT3/XQCJOytATyDIPODvz/XjCk/O
 6dtPteV7aIlSG5zjIRZTMxr/+fr2zTmtjPVaGs5sUA==
X-Google-Smtp-Source: APXvYqxOUSWUQ3jLt0ClnRsVTHOlGj4gBaUGVeolp0BKGbX6O77PYECRjhSrrEERuRToBxdhUEoYFivoa6PmBkssuh0=
X-Received: by 2002:ac2:4286:: with SMTP id m6mr7494929lfh.150.1558655461095; 
 Thu, 23 May 2019 16:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <1558648647-14324-1-git-send-email-alan.mikhak@sifive.com>
In-Reply-To: <1558648647-14324-1-git-send-email-alan.mikhak@sifive.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Thu, 23 May 2019 16:50:50 -0700
Message-ID: <CABEDWGy8PhHqqRPpZjVrd3VtwxmtxV+Gs-8442e9EvKjFQLELw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Clear BAR before freeing its space
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com, 
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org, 
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, gustavo.pimentel@synopsys.com,
 wen.yang99@zte.com.cn, kjlu@umn.edu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_165102_944778_D3ABC26E 
X-CRM114-Status: GOOD (  11.99  )
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


On Thu, May 23, 2019 at 2:57 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
>
> Associated pci_epf_bar structure is needed in pci_epc_clear_bar() but
> would be cleared in pci_epf_free_space(), if called first, and BAR
> would not get cleared.
>
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> index 27806987e93b..f81a219dde5b 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> @@ -381,8 +381,8 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
>                 epf_bar = &epf->bar[bar];
>
>                 if (epf_test->reg[bar]) {
> -                       pci_epf_free_space(epf, epf_test->reg[bar], bar);
>                         pci_epc_clear_bar(epc, epf->func_no, epf_bar);
> +                       pci_epf_free_space(epf, epf_test->reg[bar], bar);
>                 }
>         }
>  }
> --
> 2.7.4
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
