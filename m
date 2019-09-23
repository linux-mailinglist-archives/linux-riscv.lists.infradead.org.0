Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DACE0BB2AB
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 13:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OChQ9BNDDFTA8xO6Yfxuu5S+fAeX2NXxZXBPGBcRDY4=; b=fTJ6XivTg1w3as
	nsSsyENRkOvi5sEwF6xKGbApfZ20C/Z53YbbWxI0MJsygDFjNHQxKX1ayU8zbHOATC7c5L3n15CxU
	5WSjjOn+0zF0PSpQq7se5cAKr0Hz/rrWnakAb3YD8twXZmhwskgcQEDaJtydrayjSzVWld2otm1eB
	9n8tIF5weaqT2O7R1J8ejBNLiDw5E6UVJQ41jlHbLaX3eTF/5i02fGdWaWObVmRr563Xba9Fgv7vJ
	JChGFtjz4LXbinxa1IrCgvAHyaIPz0sYeytENBmN4XldoNMohBowbjMq0j4r8//y+29I2WO68BIKg
	g6wJn1ssRAirgrfTvIxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCMGa-0000LH-7Y; Mon, 23 Sep 2019 11:12:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCMGW-0000JW-5C
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 11:12:25 +0000
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 85300C00E906
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 11:12:22 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id t11so4672624wro.10
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 04:12:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uxD2Y3WBGHkLvQqCAXXWzhnVRm7+WSVZkhBdGyUy/Zg=;
 b=Xv5n7WZjA9f2X1ZvgV3mi4dKVHbasZOo9FW5+IJbyG2wu3QptV6Po/bmwUzCPNfHU7
 deNN6/O7spoHSD+71K3MdUY5knVPNemGzOgDhHRu4IAd3k5D/4vqJ9Y6pStj1s9NCdbF
 J9GT3teVOy+vkS88DCfx6OJPzx3EwUMGvmygNpTU4bTJgYzXMPODZiW880F1Z3IXRKjt
 50jnuqr2L6RJO10ET9COyxChnOeg20JHk7sN0vtxwIXu6vTurS94Hi2zh8MbaY9YBjA4
 05XYgZWzq3h7aEQBdCufH92OllPVBbMW/YIGYq+DfHxgaEonpCSoR9DR/asNMRgBPeYO
 mxXQ==
X-Gm-Message-State: APjAAAW15E41hWmQjclWkoUciSqPpeI38I8B1ezT7CSLdK+uCWvbnlkn
 46l4AsHOurR2yu1HQ9bCKTpoZnSFGUnkDxZQ3D+8FGRHdO1HkeK6353JSPOFljBm38O6I+B4LB0
 mcFBFoO0aqXztGasmrfY9ID2EJJVO
X-Received: by 2002:adf:cc87:: with SMTP id p7mr20853220wrj.43.1569237141151; 
 Mon, 23 Sep 2019 04:12:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzMW44zhOI1DG3DXgqsJqxbWPiZJb1HLWTJc4XK+mxiK6jX2sDL9nFCMUqBJJ1EN+ViAcwPtQ==
X-Received: by 2002:adf:cc87:: with SMTP id p7mr20853197wrj.43.1569237140829; 
 Mon, 23 Sep 2019 04:12:20 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:9520:22e6:6416:5c36?
 ([2001:b07:6468:f312:9520:22e6:6416:5c36])
 by smtp.gmail.com with ESMTPSA id s12sm14065554wrn.90.2019.09.23.04.12.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 04:12:20 -0700 (PDT)
Subject: Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-12-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <8c44ac8a-3fdc-b9dd-1815-06e86cb73047@redhat.com>
Date: Mon, 23 Sep 2019 13:12:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904161245.111924-12-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_041224_240099_C4A6BC67 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 04/09/19 18:15, Anup Patel wrote:
> +	unsigned long guest_sstatus =
> +			vcpu->arch.guest_context.sstatus | SR_MXR;
> +	unsigned long guest_hstatus =
> +			vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
> +	unsigned long guest_vsstatus, old_stvec, tmp;
> +
> +	guest_sstatus = csr_swap(CSR_SSTATUS, guest_sstatus);
> +	old_stvec = csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
> +
> +	if (read_insn) {
> +		guest_vsstatus = csr_read_set(CSR_VSSTATUS, SR_MXR);

Is this needed?  IIUC SSTATUS.MXR encompasses a wider set of permissions:

  The HS-level MXR bit makes any executable page readable.  {\tt
  vsstatus}.MXR makes readable those pages marked executable at the VS
  translation level, but only if readable at the guest-physical
  translation level.

So it should be enough to set SSTATUS.MXR=1 I think.  But you also
shouldn't set SSTATUS.MXR=1 in the !read_insn case.

Also, you can drop the irq save/restore (which is already a save/restore
of SSTATUS) since you already write 0 to SSTATUS.SIE in your csr_swap.
Perhaps add a BUG_ON(guest_sstatus & SR_SIE) before the csr_swap?

> +		asm volatile ("\n"
> +			"csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
> +			"li %[tilen], 4\n"
> +			"li %[tscause], 0\n"
> +			"lhu %[val], (%[addr])\n"
> +			"andi %[tmp], %[val], 3\n"
> +			"addi %[tmp], %[tmp], -3\n"
> +			"bne %[tmp], zero, 2f\n"
> +			"lhu %[tmp], 2(%[addr])\n"
> +			"sll %[tmp], %[tmp], 16\n"
> +			"add %[val], %[val], %[tmp]\n"
> +			"2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
> +		: [hstatus] "+&r"(guest_hstatus), [val] "=&r" (val),
> +		  [tmp] "=&r" (tmp), [tilen] "+&r" (tilen),
> +		  [tscause] "+&r" (tscause)
> +		: [addr] "r" (addr));
> +		csr_write(CSR_VSSTATUS, guest_vsstatus);

> 
> +#ifndef CONFIG_RISCV_ISA_C
> +			"li %[tilen], 4\n"
> +#else
> +			"li %[tilen], 2\n"
> +#endif

Can you use an assembler directive to force using a non-compressed
format for ld and lw?  This would get rid of tilen, which is costing 6
bytes (if I did the RVC math right) in order to save two. :)

Paolo

> +			"li %[tscause], 0\n"
> +#ifdef CONFIG_64BIT
> +			"ld %[val], (%[addr])\n"
> +#else
> +			"lw %[val], (%[addr])\n"
> +#endif

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
