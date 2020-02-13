Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A2515BD42
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Feb 2020 12:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Date:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZbCVCsWtjaV6WQRwY8Rn/uEchVFjr3LoL9o0Yg5mTY0=; b=EtW1E6vM1wDTUO
	RtAghdzZ+MVD2tty9u+Ztfq9dNwjPaS2NFclq6Kf2rBsyEYX2pCTCUfRQxWYC/FVdKAchpS0bIFwa
	2MRE0wHLdhRticMKXP6u3lascDVfhZrJkbqmiC93ZFyVYCy5/d6jkqSLQI6xI14h+qRgGNjxuD+ck
	pfnURBHi/uFFMLDHMOT/Ag3gzxALGwaxeUeOpoFCEnK9jSXkjvmPy5M8R46xcIdN8bO14kOneNpD4
	JajNufHyblCBdTs9hU3lxiYetSB1KLxe8U5l2jACv10zi76XhHojjQ6j23sYi8XbVXA+TNIL/iyZD
	izOT+n1qXsQN4B70sMMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CG2-0007Ml-5u; Thu, 13 Feb 2020 11:02:10 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CFz-0007M7-6o
 for linux-riscv@lists.infradead.org; Thu, 13 Feb 2020 11:02:08 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1j2CFW-0007Yp-CI; Thu, 13 Feb 2020 12:01:38 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 068BB1013A6; Thu, 13 Feb 2020 12:01:38 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Atish Patra <atish.patra@wdc.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 10/11] irqchip/sifive-plic: Initialize the plic handler
 when cpu comes online
In-Reply-To: <20200212014822.28684-11-atish.patra@wdc.com>
Date: Thu, 13 Feb 2020 12:01:37 +0100
Message-ID: <87ftfe3g4u.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_030207_389482_528E5A9D 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Vincent Chen <vincent.chen@sifive.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Mao Han <han_mao@c-sky.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Allison Randal <allison@lohutok.net>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Atish Patra <atish.patra@wdc.com> writes:
  
> +static void plic_handler_init(struct plic_handler *handler, u32 threshold)
> +{
> +	irq_hw_number_t hwirq;
> +
> +	/* priority must be > threshold to trigger an interrupt */
> +	writel(threshold, handler->hart_base + CONTEXT_THRESHOLD);
> +	for (hwirq = 1; hwirq < plic_irqdomain->hwirq_max; hwirq++)
> +		plic_toggle(handler, hwirq, 0);
> +}

> +
> +static int plic_starting_cpu(unsigned int cpu)
> +{
> +	u32 threshold = 0;

Pointless variable. Also you use PLIC_DISABLE_THRESHOLD down below, so
please add a proper define for enable as well.

> +	struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);

        this_cpu_ptr*&...)

The callback is guaranteed to run on the plugged in CPU.

> -			threshold = 0xffffffff;
> +			plic_handler_init(handler, PLIC_DISABLE_THRESHOLD);

Thanks,

        tglx

