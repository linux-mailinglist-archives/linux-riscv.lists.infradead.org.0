Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B517F03A
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 11:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LITUoBhnEbL0x0wFJjjxXvXwbUYium/iiPDa1sNmjnM=; b=jwRo78onBWMV07
	oLkHkCfVDx8rQzADL819CSK7DKVcmDTuLofQP1PViey1AalpvPjIhSQJA5NXI+k32IMfQvImGg9Z5
	hV+u2zN0cdrQcxm9Bg8hgMRyqN1d88U9EHKbO55jgwnks9TmQ/2wg9YYy7OtmkQLHfN4ZqHWRVTHW
	WxhHOrNjlc0/NcWRxQqrgXa5FrXhhcgzmZzuNllXBbelNaz3aFx+tjOVTrSRLziWUwkWoCmYulNVk
	p9XC/6RJpYP04gzgAhaTgYBKEya6nRtjj70424ZGTxrlWs+UDcvhalbya7ltTlv8N00SOPijkLlby
	R7YptUt0IdBT5BBuhGgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTin-0004cu-4g; Fri, 02 Aug 2019 09:19:33 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTii-0004c8-Re
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 09:19:30 +0000
Received: by mail-wr1-f68.google.com with SMTP id p13so1864814wru.10
 for <linux-riscv@lists.infradead.org>; Fri, 02 Aug 2019 02:19:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rryOV1whaDt5qbcW76oYyWTCHfociKUQe7uUrG+FL04=;
 b=c3DAMP5sGPMlWOGJ4uOl/RsBhd+NMUWSdlH4Fn1z3hPSUay/K4WVESNjBQGVDy07vF
 a4sbtlEoES/H3s+oPb4FhAozomD4nNuT8HZ27JBsEXMRh/1/AzoAoBxtdQrHllupGenZ
 yjSSpYPzmxpJ4vLA9IX3RPeD04Kebi3ajOMgij2soQ4oRJe/yYDTXL8ljupc/Yb6MPiO
 0H9822H/F0fh/E6p29tTIb6CfPs4ftl+9sZ8EINBZ82F9vmgS0WziONPeP0I8nbdJ4fV
 t86jU7ZX0z52PUHYvMZNDXV5BEczSJwBP58YcKTklLczeHws6MIvH5vRfe4ZOp70DFXc
 5dvA==
X-Gm-Message-State: APjAAAXdfMIXq7N4hJgCZnN+jF8Qq9cjUdqsc99zZ5dyu/4aoR7FRPyR
 3gXpxktKJ3zjbOkws+JOUwYJ+w==
X-Google-Smtp-Source: APXvYqza/LpvBZeOyX5mCSYBuS884KevJyp6R0c0GnF4OO2UtCcL/e+zxFkWcQbl0keeDPdzL8UUmg==
X-Received: by 2002:a5d:5510:: with SMTP id
 b16mr109465347wrv.267.1564737566565; 
 Fri, 02 Aug 2019 02:19:26 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4013:e920:9388:c3ff?
 ([2001:b07:6468:f312:4013:e920:9388:c3ff])
 by smtp.gmail.com with ESMTPSA id v4sm75315899wmg.22.2019.08.02.02.19.25
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 02:19:26 -0700 (PDT)
Subject: Re: [RFC PATCH v2 11/19] RISC-V: KVM: Implement VMID allocator
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-12-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <ef688903-ff49-ffeb-1f95-ef995942d5dc@redhat.com>
Date: Fri, 2 Aug 2019 11:19:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802074620.115029-12-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_021928_894589_3A9603FC 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

On 02/08/19 09:48, Anup Patel wrote:
> +struct kvm_vmid {
> +	unsigned long vmid_version;
> +	unsigned long vmid;
> +};
> +

Please document that both fields are written under vmid_lock, and read
outside it.

> +		/*
> +		 * On SMP we know no other CPUs can use this CPU's or
> +		 * each other's VMID after forced exit returns since the
> +		 * vmid_lock blocks them from re-entry to the guest.
> +		 */
> +		force_exit_and_guest_tlb_flush(cpu_all_mask);

Please use kvm_flush_remote_tlbs(kvm) instead.  All you need to do to
support it is check for KVM_REQ_TLB_FLUSH and handle it by calling
__kvm_riscv_hfence_gvma_all.  Also, since your spinlock is global you
probably should release it around the call to kvm_flush_remote_tlbs.
(Think of an implementation that has a very small number of VMID bits).

> +	if (unlikely(vmid_next == 0)) {
> +		WRITE_ONCE(vmid_version, READ_ONCE(vmid_version) + 1);
> +		vmid_next = 1;
> +		/*
> +		 * On SMP we know no other CPUs can use this CPU's or
> +		 * each other's VMID after forced exit returns since the
> +		 * vmid_lock blocks them from re-entry to the guest.
> +		 */
> +		force_exit_and_guest_tlb_flush(cpu_all_mask);
> +	}
> +
> +	vmid->vmid = vmid_next;
> +	vmid_next++;
> +	vmid_next &= (1 << vmid_bits) - 1;
> +
> +	/* Ensure VMID next update is completed */
> +	smp_wmb();

This barrier is not necessary.  Writes to vmid->vmid need not be ordered
with writes to vmid->vmid_version, because the accesses happen in
completely different places.

(As a rule of thumb, each smp_wmb() should have a matching smp_rmb()
somewhere, and this one doesn't).

Paolo

> +	WRITE_ONCE(vmid->vmid_version, READ_ONCE(vmid_version));
> +

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
