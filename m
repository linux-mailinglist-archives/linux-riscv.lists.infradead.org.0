Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E761D60D0
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 14:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Tv/RnQ4ghHjeBieaO69Pr70VyetvxIGx0gk5+5DqLA=; b=JAt1W+UMJDriR3//ysmeQW/H1
	BaA7iTQ6k8r5sWl3t8VN9UkmPCJNTYlQHIfBbI8E34ETzclzWBUqDRNA34gUAA7J/iYiyolFuWbOw
	gHZ81mexDq8DYEQm+c1z+EyvmSGvaIj9FDRIqFYo2OP+Nxhn96uJr14bDgRG3CwXObjdaamCbgQ0K
	qaYvjokBmreraENZ6jsAm3ueHbhYt9T/L+6G4wM4/Js5x28u4TQhooLL/lUxh8qhkttrIlXw/cSqa
	lTpV6gTmsJFrEiY73LlmlOcT+xxuKkekrEPfBP6b/NPd8oqFh1ijf9ztMV81YyGefqMrGesWEriwU
	IX3NtFBgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZvxd-0001zg-QF; Sat, 16 May 2020 12:30:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZvxZ-0001zH-H8
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 12:30:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C5AC20671;
 Sat, 16 May 2020 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589632233;
 bh=zW9HKonnsAlZGhZvKDOEYYfWIia43qEPpLdDXghOizs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s1lrSGWVhML01UHJxtpr6Ec5tU/Om73H4jMFAaLIwi8/qo5kyZu6EhL2iCsf2pzwV
 7hS//AVCiodSx6ouASK2GFVPqlSjZ/NF31WoRlwdz5bvVwYWdNXjzdp1eK2A9mc5+v
 jHeyFEaZN8PJY+UqBRADkLadQS5BW1sh/jBkmAJ4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jZvxX-00CoHk-BM; Sat, 16 May 2020 13:30:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 16 May 2020 13:30:31 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH 4/4] irqchip/sifive-plic: Set default irq affinity in
 plic_irqdomain_map()
In-Reply-To: <20200516063901.18365-5-anup.patel@wdc.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
 <20200516063901.18365-5-anup.patel@wdc.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <6e9bf7e1ea3493c63a23c19485f3c644@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, tglx@linutronix.de, jason@lakedaemon.net,
 atish.patra@wdc.com, Alistair.Francis@wdc.com, anup@brainfault.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_053033_589017_6E33BD63 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-16 07:39, Anup Patel wrote:
> For multiple PLIC instances, each PLIC can only target a subset of
> CPUs which is represented by "lmask" in the "struct plic_priv".
> 
> Currently, the default irq affinity for each PLIC interrupt is all
> online CPUs which is illegal value for default irq affinity when we
> have multiple PLIC instances. To fix this, we now set "lmask" as the
> default irq affinity in for each interrupt in plic_irqdomain_map().
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/irqchip/irq-sifive-plic.c
> b/drivers/irqchip/irq-sifive-plic.c
> index e42fc082ad18..9af5e2fd2574 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -174,6 +174,7 @@ static int plic_irqdomain_map(struct irq_domain
> *d, unsigned int irq,
>  	irq_domain_set_info(d, irq, hwirq, &priv->chip, d->host_data,
>  			    handle_fasteoi_irq, NULL, NULL);
>  	irq_set_noprobe(irq);
> +	irq_set_affinity(irq, &priv->lmask);
>  	return 0;
>  }

Isn't that a fix? If so, please add a Fixes: tag, as well as a CC to
stable if you think it should be backported.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

