Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829868BFD3
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 19:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+5PVPyC0SzQmppnOl5dTQa0hEpEI5wj2/U01QcnKvQ=; b=iKeJNsMIPhU2Bj
	Q0AJjbswhDIj5yxKpNvJThE36lnMOLC3/PCOxC9ykNoYKjq6CQAvL7HMncBvncZvqoIqNzF/7HvtZ
	m12tBbc9Xk9NDo8iFjbefpw9fma6Pvg+wUC0mq25L37p93g9/KXmQ0pN5dX+E8aoWzmz/15YuOfX9
	8bDq7drhMmmZt4JUUHnX7Ex/72qKYu7+2GexDS8yElHzpYFo7PFSBx8HlJefyCbqsWPHXW7AM633W
	vE0tHXM8csD/mC7EwM67V3YX5HVPKrpeNYOpCaNUNN9w3UNOOQUnLMYPbd8qzGL1qd2hjNoauc4Ap
	z87Z3OVtoKj5nhdBaXuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaq8-0001Lb-RR; Tue, 13 Aug 2019 17:44:08 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaq4-0001L8-Qz
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 17:44:06 +0000
Received: by mail-ot1-x343.google.com with SMTP id g17so24785380otl.2
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 10:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=e//tFyHxvVn4RxWw0GV+f727CP/Uza8Mg4HOvjD9WwM=;
 b=NfTsfbgV5WGpTvlyy9A2mUGXaPdLqooU2lc+4m1FQdAHncqrJoJ61g1Z/JBUHlUuFo
 +dA4vaoxJ7F+AQcVHAKmchrxWvSscoyuSUif6QJ0ONNejw3dWzOxsSa1qEqhuwI5pEdz
 u/uBFATnFPuT5dIsF6QYDaDvDP6kZJffd6sQqhyDTwHgzxET4apWFXmw8w1hjDkuZi7s
 ilIa0b46bfzxj+OcIFG+xqhYhiVnO8tIJjLYRY+CjN4z2RiC2V97fHg2bEaBh/2/7P7h
 3B+qDE8umFimLohSegAxkrj35As+rRFinFw7yZgAYV6yEdkBpPQPPWoQFXtlvOhaZkYu
 GVFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=e//tFyHxvVn4RxWw0GV+f727CP/Uza8Mg4HOvjD9WwM=;
 b=LaHzK7Dhh/XACPLJgl8zwCZbfu4ZZZJQlROQQnReKlOTr4OTYdSihvlw2OcKz/IfnE
 YlQnoPMRoyWbQFkoNsjeHb9FqlRRBWcCHklNnxywCWDVBbfwgLSYP/CAPrsEgr1VbKPn
 dGhEEKVvBeZ5Da5oAARQWchHs/JijHbCtvlg0trUYfiEhVzjoGHQK3+Hieqn9A/6nNL+
 9r3+F/9OGV5yueqo2/SlqnbSQthS6f6mJrJuvJTw03RnvaEE68V9zyl07y8TRQBbNT+O
 wtmw4TmGjdlsFotCsN8Aol4BEap6pA4qU6i2zErfXsP+rXLC+mv/DUVVFukApnAoDzaJ
 PJVA==
X-Gm-Message-State: APjAAAWtd450hvJnyze0ZlTntossGtBQz+XDa9FQB6X86k7gmR46a4St
 pDgAsZw1t+bOUlDTUCHE2CSV3A==
X-Google-Smtp-Source: APXvYqycnXJThie+s/45ClHCc8Nm2hhnBi6KBWzn8Vazilpo9gUuJDafqhZi+w14fYjO2RKqUobGyA==
X-Received: by 2002:a02:cb51:: with SMTP id k17mr9208388jap.4.1565718243824;
 Tue, 13 Aug 2019 10:44:03 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 s3sm88083226iob.49.2019.08.13.10.44.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 10:44:03 -0700 (PDT)
Date: Tue, 13 Aug 2019 10:44:02 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org
Subject: Re: [PATCH 01/15] irqchip/sifive-plic: set max threshold for ignored
 handlers
In-Reply-To: <20190813154747.24256-2-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908131032260.30024@viisi.sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-2-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_104404_943018_670327CD 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Christoph Hellwig <hch@lst.de>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thomas, Jason, Marc,

On Tue, 13 Aug 2019, Christoph Hellwig wrote:

> When running in M-mode we still the S-mode plic handlers in the DT.
> Ignore them by setting the maximum threshold.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

If you're happy with this, could one of you ack it so we can merge it 
with the rest of this series through the RISC-V tree?

thanks

- Paul

> ---
>  drivers/irqchip/irq-sifive-plic.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index cf755964f2f8..c72c036aea76 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -244,6 +244,7 @@ static int __init plic_init(struct device_node *node,
>  		struct plic_handler *handler;
>  		irq_hw_number_t hwirq;
>  		int cpu, hartid;
> +		u32 threshold = 0;
>  
>  		if (of_irq_parse_one(node, i, &parent)) {
>  			pr_err("failed to parse parent for context %d.\n", i);
> @@ -266,10 +267,16 @@ static int __init plic_init(struct device_node *node,
>  			continue;
>  		}
>  
> +		/*
> +		 * When running in M-mode we need to ignore the S-mode handler.
> +		 * Here we assume it always comes later, but that might be a
> +		 * little fragile.
> +		 */
>  		handler = per_cpu_ptr(&plic_handlers, cpu);
>  		if (handler->present) {
>  			pr_warn("handler already present for context %d.\n", i);
> -			continue;
> +			threshold = 0xffffffff;
> +			goto done;
>  		}
>  
>  		handler->present = true;
> @@ -279,8 +286,9 @@ static int __init plic_init(struct device_node *node,
>  		handler->enable_base =
>  			plic_regs + ENABLE_BASE + i * ENABLE_PER_HART;
>  
> +done:
>  		/* priority must be > threshold to trigger an interrupt */
> -		writel(0, handler->hart_base + CONTEXT_THRESHOLD);
> +		writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
>  		for (hwirq = 1; hwirq <= nr_irqs; hwirq++)
>  			plic_toggle(handler, hwirq, 0);
>  		nr_handlers++;
> -- 
> 2.20.1
> 
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
