Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB661DD9DD
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 00:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=OhAMbFkeBYkh1YD4II233lD+yGJ3K0G9Oci8yZ/ZBA0=; b=D0Pa+cJMi8DpiD
	XvfO9f8lmpZx/pBUVdPi+o/E3T8++F9Xyh8WT4p4EipS+opbqko0YbV5G+y24QnZ5yjvi+jphlhnK
	qhgNaoDViVvWjwKxGKcah1ry1RbKULCRczAuEGx8tH93DF/0EBlMWy8BObj9DI0QOOP/t0yzysgGs
	Sz+8cFgg5TfQWbRmkmmn+nqcRdXd1T7obXtoglS90OZBMVYfgdL116gg2eNX0RyKi1+chaa1Sn34K
	6ocTZWp3yhKEfyPXqAEH9DMk00MtpuTGCfC4K243q2WhQp6GZoHB8RbIYCyYqLjtMw+unMAC0EjE8
	9fULlwAIIWDO2WicEkFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtKW-0007Na-9d; Thu, 21 May 2020 22:06:20 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtKS-0007MW-KK
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 22:06:18 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ci21so3976213pjb.3
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 15:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=OhAMbFkeBYkh1YD4II233lD+yGJ3K0G9Oci8yZ/ZBA0=;
 b=bxpp78PWsbxwSFm6fyiRLWCl3wvWThr8h5f6oLQhDzrgcsFD/DEKoS7oK7x73h0A/T
 jkNibCb1jeIWkzy3aP6PUgSiyo949bJH8y5SprysWFZIm0TDKU7RGvQBn33uwRkJh/DS
 w/vFLbaIY20+q/biEmbBhYNgWajV+Fk2/gAYNIFmDHFsd5p59Wx5H484OmlaYPbjPym3
 sU2LetexScCIAqh6kkrHgoU1XctXZ50V31VsXmQRuTxWZbfSfJCOz5ubNXYZGK0wDSCE
 czWKmK0JYYzhmO0Xxs3ezU17nwQHdInAS2MJUDhzjKmXUL2kqju4Gh/ZtM1k6KWtl6KL
 6Mvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=OhAMbFkeBYkh1YD4II233lD+yGJ3K0G9Oci8yZ/ZBA0=;
 b=Hs/MAj0cjfUNBpKdR3uj/J9i3FmKn0AxloczktQV3FumyjUqrsoLfZYkkyEiUwTVq0
 yXgXOOcPALkztwZJ7nu4PFMR7uzzF2NDtDzl3dy5S1TyfKa6SAFdVZzx7ZPB/rAsD8jq
 uMEYjJAvXox5fq0Zhexj0iwYUFrCmWtF88LVCBAI02dHJFzGO3/NpL38BTZ+BZSppPHF
 HDQWQSRChHWfcEgiwM762SBQ8m3VfiBCZiP8KHAYJXJOBGc0NVMltdy4nZqUNrIRsHD8
 HKPaIJdR3sy4yFlMjS2GvOUfIlkrZoFB2un9SFX+7xuOG4AlLbPyr/jXM87MRR+lPSUC
 TKMg==
X-Gm-Message-State: AOAM533GRngy5Lko84zXhEzKwUZu+RELokN4TzpbbHb4lsoZ92K0B0R0
 uoG6WC1ftfdBa5Px44NPjV1X4uev1ecH7Q==
X-Google-Smtp-Source: ABdhPJwN1m6K9hPFs82tA6eWxV2r1TLL4YbjntnvjsyVqmjBlB6uawDniHorXAEwxlNqOq1bJjqFxA==
X-Received: by 2002:a17:90b:23d4:: with SMTP id
 md20mr776706pjb.164.1590098775476; 
 Thu, 21 May 2020 15:06:15 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id d4sm2888946pjo.43.2020.05.21.15.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 15:06:14 -0700 (PDT)
Date: Thu, 21 May 2020 15:06:14 -0700 (PDT)
X-Google-Original-Date: Thu, 21 May 2020 14:36:15 PDT (-0700)
Subject: Re: [PATCH v2 1/3] irqchip/sifive-plic: Set default irq affinity in
 plic_irqdomain_map()
In-Reply-To: <20200518091441.94843-2-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-724b2ebd-3b41-4b3e-8685-26860402e663@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_150616_727263_2D7EDEC2 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 02:14:39 PDT (-0700), Anup Patel wrote:
> For multiple PLIC instances, each PLIC can only target a subset of
> CPUs which is represented by "lmask" in the "struct plic_priv".
>
> Currently, the default irq affinity for each PLIC interrupt is all
> online CPUs which is illegal value for default irq affinity when we
> have multiple PLIC instances. To fix this, we now set "lmask" as the
> default irq affinity in for each interrupt in plic_irqdomain_map().
>
> Fixes: f1ad1133b18f ("irqchip/sifive-plic: Add support for multiple PLICs")
> Cc: stable@vger.kernel.org
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index 822e074c0600..9f7f8ce88c00 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -176,9 +176,12 @@ static struct irq_chip plic_chip = {
>  static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
>  			      irq_hw_number_t hwirq)
>  {
> +	struct plic_priv *priv = d->host_data;
> +
>  	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
>  			    handle_fasteoi_irq, NULL, NULL);

If you're going to re-spin this, d->host_data could be priv here.

>  	irq_set_noprobe(irq);
> +	irq_set_affinity(irq, &priv->lmask);
>  	return 0;
>  }

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

