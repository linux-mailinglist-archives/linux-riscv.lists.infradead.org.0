Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A546F7A6C4
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 13:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOzDUqbVt4grjaaqe9GwIQknIIJ/c3ShVLZJQk7i+QE=; b=GXmI3+Zu8w3+ax
	SUzmrdhOgciDDjkpq2f7zyvhuwggxQRahB68N4lZRIQS14f1IJUeQ67feLrpoHliPxnR3fUJwZkVG
	hpNkqmMd1IIeDvfRQmpLpTKIZeKeZxDQP+zhtQeUwhrOZAOpgPnel5vG7zHRib5Rok+FjWvwo3WXb
	ZY9cKV0Q1wBgyUjZ7RpfLJjXA+tUyJfun6L8Bi+oN3Q2kAY0j6oIwfgmztdH9S8hM1Ods9rqOTzl/
	Qe7j4RUwJqGXzkDBciwJPbyOptM63ieECuppQwBIA0ymngqBQEYKB55IhcTEY3Hnl8KczmEdk9lrW
	LQNeE8+1a88zMHKfUZNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQB6-0005T5-Jq; Tue, 30 Jul 2019 11:20:24 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQAz-0005SC-Lr
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 11:20:18 +0000
Received: by mail-wm1-f66.google.com with SMTP id a15so56769869wmj.5
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 04:20:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dU6DC0DBnzponZWFwxW0e6zjqYJ2z/TxlXP6MPH2kzU=;
 b=bR6NRGHM3AHPjylQoB6dzDuzMBnNzh5zcZRtJRr4J3j3eQ+MdWoFrp6AInn+Vfj2MN
 xtN6lU0QoNnwOdTvF7Yt1Gxk/sFvTReDLdV/L9h9LHM03X/eZt576GnPVLPxze18WcVd
 1nkz1qJYLnWH6huFvnmRCaYMvU444Jf2UPHH4ZseV9wsEJcwaMWaRWmDCyYDqVa3OryR
 dZtBcaKpt8/aJNWlwmr9ev+H8qUmhxg0Wc7sA+F4Wj0WysQgT2FbqMaMg+jvgbLg5wso
 zpimWHwc6LcnDTOJGf0X4FIfilhx0XMQLepTeAWH+h+UKiAj/uHZkGebzDVFSPliRhoC
 YV5g==
X-Gm-Message-State: APjAAAW8jFDeINHZTknvfalhzI5M53fT6XKvlHKQju1P8qBMgFYV3esW
 Kvk7nOzPpep8p2VIyE44u8SunQ==
X-Google-Smtp-Source: APXvYqxGPEGFqFhh+SybAHgvqyZjBla5wxFfR6C1Wpq433TyWcQ3KrXJLcUDIP/E7F7OQac0mNBfoA==
X-Received: by 2002:a1c:cb43:: with SMTP id b64mr107521wmg.135.1564485615636; 
 Tue, 30 Jul 2019 04:20:15 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id 18sm54002868wmg.43.2019.07.30.04.20.14
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 04:20:15 -0700 (PDT)
Subject: Re: [RFC PATCH 08/16] RISC-V: KVM: Handle MMIO exits for VCPU
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-9-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <05d41219-6c0c-8851-dab6-24f9c76aed57@redhat.com>
Date: Tue, 30 Jul 2019 13:20:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-9-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_042017_718836_D99DB721 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 29/07/19 13:57, Anup Patel wrote:
> +static ulong get_insn(struct kvm_vcpu *vcpu)
> +{
> +	ulong __sepc = vcpu->arch.guest_context.sepc;
> +	ulong __hstatus, __sstatus, __vsstatus;
> +#ifdef CONFIG_RISCV_ISA_C
> +	ulong rvc_mask = 3, tmp;
> +#endif
> +	ulong flags, val;
> +
> +	local_irq_save(flags);
> +
> +	__vsstatus = csr_read(CSR_VSSTATUS);
> +	__sstatus = csr_read(CSR_SSTATUS);
> +	__hstatus = csr_read(CSR_HSTATUS);
> +
> +	csr_write(CSR_VSSTATUS, __vsstatus | SR_MXR);
> +	csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus | SR_MXR);
> +	csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
> +
> +#ifndef CONFIG_RISCV_ISA_C
> +	asm ("\n"
> +#ifdef CONFIG_64BIT
> +		STR(LWU) " %[insn], (%[addr])\n"
> +#else
> +		STR(LW) " %[insn], (%[addr])\n"
> +#endif
> +		: [insn] "=&r" (val) : [addr] "r" (__sepc));
> +#else
> +	asm ("and %[tmp], %[addr], 2\n"
> +		"bnez %[tmp], 1f\n"
> +#ifdef CONFIG_64BIT
> +		STR(LWU) " %[insn], (%[addr])\n"
> +#else
> +		STR(LW) " %[insn], (%[addr])\n"
> +#endif
> +		"and %[tmp], %[insn], %[rvc_mask]\n"
> +		"beq %[tmp], %[rvc_mask], 2f\n"
> +		"sll %[insn], %[insn], %[xlen_minus_16]\n"
> +		"srl %[insn], %[insn], %[xlen_minus_16]\n"
> +		"j 2f\n"
> +		"1:\n"
> +		"lhu %[insn], (%[addr])\n"
> +		"and %[tmp], %[insn], %[rvc_mask]\n"
> +		"bne %[tmp], %[rvc_mask], 2f\n"
> +		"lhu %[tmp], 2(%[addr])\n"
> +		"sll %[tmp], %[tmp], 16\n"
> +		"add %[insn], %[insn], %[tmp]\n"
> +		"2:"
> +	: [vsstatus] "+&r" (__vsstatus), [insn] "=&r" (val),
> +	  [tmp] "=&r" (tmp)
> +	: [addr] "r" (__sepc), [rvc_mask] "r" (rvc_mask),
> +	  [xlen_minus_16] "i" (__riscv_xlen - 16));
> +#endif
> +
> +	csr_write(CSR_HSTATUS, __hstatus);
> +	csr_write(CSR_SSTATUS, __sstatus);
> +	csr_write(CSR_VSSTATUS, __vsstatus);
> +
> +	local_irq_restore(flags);
> +
> +	return val;
> +}
> +

This also needs fixups for exceptions, because the guest can race
against the host and modify its page tables concurrently with the
vmexit.  (How effective this is, of course, depends on how the TLB is
implemented in hardware, but you need to do the safe thing anyway).

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
