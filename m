Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5BBA648B
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 10:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PMzpgMr/IlBr5UyxS1LN7ilAQyR7YnPIhl3jl/0eYc=; b=Wx9/OPS4G1r8Bk
	0ocVoWZ6jH2VKY4q1xzVpgNDF5V9Xqz+jrawvi2FiIWZWpXIWL+9fcUEfCldFbw0xi7aaDegl5AW6
	dGndT6k2OvwFkcDAvPdHznPP1yLDYY99V7MlnDMFR1z3PJbpVh/pE8fh5XiROUh5Eds8vkw2nrPha
	XnfoXbxo5U7plmVX9i6qbyIplXMDCjIUKdpT2HExDYOvFcbBtE0HNc5qXeyD0kWKTG6l23YRUydLa
	Hky/jPKdxfOnWFUW1hUELLVUrxXmj9jimBGms8KVwbEjXBhVsdx+Hw8uVsussMJfAbjpIDsxYOVf6
	WDa780JvgFggHcrytiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i54e0-0008P7-3m; Tue, 03 Sep 2019 08:58:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i54dx-0008OC-2b
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 08:58:30 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 741718665D;
 Tue,  3 Sep 2019 08:58:28 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A9FF160C18;
 Tue,  3 Sep 2019 08:58:25 +0000 (UTC)
Date: Tue, 3 Sep 2019 10:58:23 +0200
From: Andrew Jones <drjones@redhat.com>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v6 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
Message-ID: <20190903085823.s4amn27pewc54hl2@kamzik.brq.redhat.com>
References: <20190829135427.47808-1-anup.patel@wdc.com>
 <20190829135427.47808-11-anup.patel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829135427.47808-11-anup.patel@wdc.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 03 Sep 2019 08:58:28 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_015829_131639_6309D339 
X-CRM114-Status: GOOD (  13.53  )
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
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 01:56:18PM +0000, Anup Patel wrote:
>  int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  {
> -	/* TODO: */
> +	u8 data8;
> +	u16 data16;
> +	u32 data32;
> +	u64 data64;
> +	ulong insn;
> +	int len, shift;
> +
> +	insn = vcpu->arch.mmio_decode.insn;
> +
> +	if (run->mmio.is_write)
> +		goto done;
> +
> +	len = vcpu->arch.mmio_decode.len;
> +	shift = vcpu->arch.mmio_decode.shift;
> +
> +	switch (len) {
> +	case 1:
> +		data8 = *((u8 *)run->mmio.data);
> +		SET_RD(insn, &vcpu->arch.guest_context,
> +			(ulong)data8 << shift >> shift);
> +		break;
> +	case 2:
> +		data16 = *((u16 *)run->mmio.data);
> +		SET_RD(insn, &vcpu->arch.guest_context,
> +			(ulong)data16 << shift >> shift);
> +		break;
> +	case 4:
> +		data32 = *((u32 *)run->mmio.data);
> +		SET_RD(insn, &vcpu->arch.guest_context,
> +			(ulong)data32 << shift >> shift);
> +		break;
> +	case 8:
> +		data64 = *((u64 *)run->mmio.data);
> +		SET_RD(insn, &vcpu->arch.guest_context,
> +			(ulong)data64 << shift >> shift);
> +		break;
> +	default:
> +		return -ENOTSUPP;
> +	};
> +
> +done:
> +	/* Move to next instruction */
> +	vcpu->arch.guest_context.sepc += INSN_LEN(insn);
> +

As I pointed out in the last review, just moving this instruction skip
here is not enough. Doing so introduces the same problem that 2113c5f62b74
("KVM: arm/arm64: Only skip MMIO insn once") fixes for arm.

Thanks,
drew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
