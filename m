Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A951F7948
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 16:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d8LIy29gubKpl2iIIc6Yb7Z5a0rFwMQeTPCbCl3imoY=; b=sbFsdsGbF0mFKXe/php2Sg8Rz
	sEWWUz1WNj34+SfIyiZJvnOL5WWTlqEyk+OCDeGbeJ4280QBa3/yBzvyKBHhJI2x5GHBEm3XnSq3l
	h5Si/J1xhDmW2/10hf1S308ta81mzvPYZXJ8EvP/gTj4DIHpQ4nuYdB6WYwzDeZquQu1x7oTsg+t9
	3rtQ/08a7E3SC8EQhuvpk3wysAIumnRV74G9oBxrsqqjV0cUK2baeJgnn5Juqj1EJY3AUEHH2gMtg
	Bx8AIpwXmpOZMzOCaGFU4rrKcvQIy7voD846JtxZd/qYpTKyNtqFLHpuCBt2qlkA/8y8u0bMQRfM1
	TG9LXV2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkKJ-0006D9-JW; Fri, 12 Jun 2020 14:06:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkKF-0006CW-T8
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 14:06:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A47A32074B;
 Fri, 12 Jun 2020 14:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591970790;
 bh=K18l24DjovwEYHOQ7k+M0/KaNKer8w4ba5zMXo429sQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sZNeKKbaFCkzh0sVwnu9L6NEeK7rsl/cYeBGCZDvl8Uf8kWQBOqc+zeACzfSy8RDd
 xtuVe1d6VozAs99+I9ZCpB+9zDdmTw0i1KHUgWeRAZhdF04zF3RM32RgyLZoJ5Fzk2
 eh54rqt6O9LOhFARvsciOsT5exE+dceTq1UF69Es=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjkKD-002Q27-4o; Fri, 12 Jun 2020 15:06:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 12 Jun 2020 15:06:29 +0100
From: Marc Zyngier <maz@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] irqchip: riscv-intc: Fix a typo in a pr_warn()
In-Reply-To: <20200611175302.253540-1-palmer@dabbelt.com>
References: <20200611175302.253540-1-palmer@dabbelt.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <edd04e6af3c16eabc83f28fe650a36f0@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: palmer@dabbelt.com, Anup.Patel@wdc.com, tglx@linutronix.de,
 jason@lakedaemon.net, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 kernel-team@android.com, palmerdabbelt@google.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_070631_963351_45F91346 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aou@eecs.berkeley.edu, jason@lakedaemon.net,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, tglx@linutronix.de,
 kernel-team@android.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-06-11 18:53, Palmer Dabbelt wrote:
> From: Palmer Dabbelt <palmerdabbelt@google.com>
> 
> Anup originally re-spun his patch set to include this fix, but it was a 
> bit too
> late for my PR so I've split it out.
> 
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  drivers/irqchip/irq-riscv-intc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-riscv-intc.c 
> b/drivers/irqchip/irq-riscv-intc.c
> index a6f97fa6ff69..8017f6d32d52 100644
> --- a/drivers/irqchip/irq-riscv-intc.c
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -99,7 +99,7 @@ static int __init riscv_intc_init(struct device_node 
> *node,
> 
>  	hartid = riscv_of_parent_hartid(node);
>  	if (hartid < 0) {
> -		pr_warn("unable to fine hart id for %pOF\n", node);
> +		pr_warn("unable to find hart id for %pOF\n", node);
>  		return 0;
>  	}

I'll pick it post -rc1, once I merge Linus' tree into mine.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

