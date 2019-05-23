Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3358928E1F
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 01:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1THVg06vWSer8S0t/YtnWLEjfxGt9coutasqNbT9hc8=; b=S99A56NcNOs93WTEfmSOUZ5Dcw
	s+qy82VzrmWchLR+Qt7+9rC8/EzDe+bFDtCjSOJtoWSjaobSnOdz7tBwppChalpY2QjWEle2301SZ
	tGGX0144arUnG1oOYCIjkTtxKte1xU0cGz1zG3/0LcmC5jYcw1ACzHUXHsl/bHw8Vi4IpzASX7mlL
	jcqoUNqkzJFqUQCiSsNsG+KtVWNQwmuxmxWE8HOj9sxk98HQ9+FS4DE7MVp49ktQmWuZ1+qEzdCin
	hjCCQP8WEtIcIMfdEw2etkDmedVrvtiKk0iI+0yd3G++xV7a0ZGYCtQkC9Ss9nt2Y0bY+AyOOruDC
	BU6qX4rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxb7-000595-8F; Thu, 23 May 2019 23:58:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxb3-00058O-GA
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 23:58:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id a10so7066312ljf.6
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 16:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=XOaG+GEFquIWc8ZqL+TFm0HU4q3YYIEJg9ZNEaLldJA=;
 b=e+/gloxcunIS64ypJ+CKWxOR6GHBOe89ee8OezcPnTixwXbrsj4kCp/H/qB/aRRzIh
 QByPd96mLzxgV0ur/42UdEdAgLZta9m8/n8uZwMOjeSb+TCAnc5IAjCkYySrExJSMb2d
 5Z95YKknKuZcNyY2ZBYmfV86byhj48xIMZADt3C/Bsyc5/tMvZzKhPLYGPDo19Yqvmjv
 Fud3GSHNHsFt1hu/P7rIEGw5vTXg2484c7fMGi49h6KWxersG0QgNTO1cpjLK/UmrfDl
 qsm3ycA+ZCK/MN4Cc9W533cBQNXDsSoSEJKuP2E1y+UuI6XDwek9p6GetycEEkiOPmfm
 YvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=XOaG+GEFquIWc8ZqL+TFm0HU4q3YYIEJg9ZNEaLldJA=;
 b=dCk+BfQaKu5kiQM9vFU4eTe8y6jZHBtJC2o3UWE8F61EuGGK9TFpHZPtK8eZQh8r87
 FucY7Q3JEr4jCG4s2+VA51QDUTJkLO+l1kjb2cFGa7Bq/aXkdNe64+NURIL+tM9QwzLZ
 QRj1VBvtpn5jU5okameVoV8U5/WbwuWDSVZDWwXy+QR3YvVSMgz0eoXJHBuqjrxx90K5
 +z17BFOl5A6XLEfzxEvUfXUpAW+9s9UNvs1V7Vs7BOPDtFwsyKUUZmYCyRnFe2JEaCVw
 eWTQyLnpHmDldXkkr/3rej4LVUrwKz3NlkFxvS4n8DDalnpXipUYxDhAoifGa0mwlxXB
 SRGg==
X-Gm-Message-State: APjAAAViFGbIfepD+/cZ493aYwxoL87eLqKfAAo7AMbBSPf9KyvN1+k4
 rVdxn8i9MEZEo1I4Av+eEYPi4bZzfXJO32VD9Evlow==
X-Google-Smtp-Source: APXvYqz7QckuaSLcN3Ux3XggQtq3/yHHrcwrhdr4OBzCv7p72vzW4vje4uHz3AT/cEgJbPkLOntoCGlEE9G8OL+e5sI=
X-Received: by 2002:a2e:874b:: with SMTP id q11mr22243701ljj.48.1558655883455; 
 Thu, 23 May 2019 16:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
In-Reply-To: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Thu, 23 May 2019 16:57:52 -0700
Message-ID: <CABEDWGyb3zTaiRqt7-mvrS6Dvhu0Fkhjp4nvaJ-vaJrD3n=0_Q@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com, 
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org, 
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_165805_540087_C8412DC5 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

+Bjorn Helgaas

On Thu, May 23, 2019 at 2:46 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
>
> Set endpoint controller pointer to null in pci_epc_remove_epf()
> to avoid -EBUSY on subsequent call to pci_epc_add_epf().
>
> Requires checking for null endpoint function pointer.
>
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> ---
>  drivers/pci/endpoint/pci-epc-core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index e4712a0f249c..2091508c1620 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -519,11 +519,12 @@ void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf)
>  {
>         unsigned long flags;
>
> -       if (!epc || IS_ERR(epc))
> +       if (!epc || IS_ERR(epc) || !epf)
>                 return;
>
>         spin_lock_irqsave(&epc->lock, flags);
>         list_del(&epf->list);
> +       epf->epc = NULL;
>         spin_unlock_irqrestore(&epc->lock, flags);
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_remove_epf);
> --
> 2.7.4
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
